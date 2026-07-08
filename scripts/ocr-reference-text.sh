#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  scripts/ocr-reference-text.sh [--force] [--dpi N] [--lang LANG] [--psm N] PDF ...

OCR scanned reference PDFs into references/text/*.ocr.txt.

Arguments may be full paths, paths relative to the current directory, filenames
under references/pdfs/, or basenames without the .pdf suffix.

Options:
  --force       Regenerate output even when it is newer than the source PDF.
  --dpi N       Render PDF pages at N dpi before OCR. Default: 300.
  --lang LANG   Tesseract language. Default: eng.
  --psm N       Tesseract page segmentation mode. Default: 1.
  -h, --help    Show this help.

Environment:
  TESSERACT_BIN   Path to a tesseract executable. If omitted, the script tries
                  .venv-ocr in this project, .venv-ocr in the parent directory,
                  tesseract from PATH, then /tmp/tesseract-local.
  TESSDATA_PREFIX Path to tessdata. Needed for local unpacked tesseract.
USAGE
}

require_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    printf 'error: required command not found: %s\n' "$1" >&2
    exit 1
  fi
}

setup_tesseract() {
  local candidate_root candidate_bin candidate_tessdata parent_root

  parent_root=$(cd -- "$project_root/.." && pwd)

  if [[ -n "${TESSERACT_BIN:-}" ]]; then
    if [[ ! -x "$TESSERACT_BIN" ]]; then
      printf 'error: TESSERACT_BIN is not executable: %s\n' "$TESSERACT_BIN" >&2
      exit 1
    fi
  else
    for candidate_root in "$project_root" "$parent_root"; do
      candidate_bin="$candidate_root/.venv-ocr/bin/tesseract"
      candidate_tessdata="$candidate_root/.venv-ocr/share/tessdata"
      if [[ -x "$candidate_bin" ]]; then
        TESSERACT_BIN="$candidate_bin"
        if [[ -d "$candidate_tessdata" ]]; then
          export TESSDATA_PREFIX="${TESSDATA_PREFIX:-$candidate_tessdata}"
        fi
        break
      fi
    done
  fi

  if [[ -n "${TESSERACT_BIN:-}" ]]; then
    :
  elif command -v tesseract >/dev/null 2>&1; then
    TESSERACT_BIN=$(command -v tesseract)
  elif [[ -x /tmp/tesseract-local/usr/bin/tesseract ]]; then
    TESSERACT_BIN=/tmp/tesseract-local/usr/bin/tesseract
    export LD_LIBRARY_PATH="/tmp/tesseract-local/usr/lib/x86_64-linux-gnu${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
    export TESSDATA_PREFIX="${TESSDATA_PREFIX:-/tmp/tesseract-local/usr/share/tesseract-ocr/5/tessdata}"
  else
    cat >&2 <<'ERROR'
error: tesseract was not found.

Install tesseract-ocr, create .venv-ocr in this project or its parent, or set TESSERACT_BIN.
For a temporary local unpack, /tmp/tesseract-local/usr/bin/tesseract is also recognized.
ERROR
    exit 1
  fi

  if ! "$TESSERACT_BIN" --list-langs >/dev/null 2>&1; then
    printf 'error: tesseract could not find language data. Check TESSDATA_PREFIX.\n' >&2
    exit 1
  fi
}

resolve_pdf() {
  local candidate=$1

  if [[ -f "$candidate" ]]; then
    printf '%s\n' "$candidate"
    return 0
  fi

  if [[ -f "$pdf_dir/$candidate" ]]; then
    printf '%s\n' "$pdf_dir/$candidate"
    return 0
  fi

  if [[ "$candidate" != *.pdf && -f "$pdf_dir/$candidate.pdf" ]]; then
    printf '%s\n' "$pdf_dir/$candidate.pdf"
    return 0
  fi

  printf 'error: PDF not found: %s\n' "$candidate" >&2
  return 1
}

source_label_for() {
  local pdf=$1

  case "$pdf" in
    "$project_root"/*)
      printf '%s\n' "${pdf#$project_root/}"
      ;;
    *)
      printf '%s\n' "$pdf"
      ;;
  esac
}

ocr_pdf() {
  local pdf=$1
  local base out tmp image page pages chars empty_pages source_label

  base=$(basename "$pdf")
  out="$text_dir/${base%.pdf}.ocr.txt"
  source_label=$(source_label_for "$pdf")

  if [[ $force -eq 0 && -f "$out" && "$out" -nt "$pdf" ]]; then
    printf 'skip: %s is up to date\n' "$out"
    return 0
  fi

  pages=$(pdfinfo "$pdf" | awk '/^Pages:/ { print $2; exit }')
  if [[ ! "$pages" =~ ^[0-9]+$ ]]; then
    printf 'error: could not determine page count: %s\n' "$pdf" >&2
    return 1
  fi

  tmp=$(mktemp -d)
  trap 'rm -rf "$tmp"' RETURN

  {
    printf '# OCR text extracted from scanned PDF\n'
    printf '# Source: %s\n' "$source_label"
    printf '# Generated: %s\n' "$(date -u '+%Y-%m-%dT%H:%M:%SZ')"
    printf '# Method: pdftoppm -r %s -gray -png, then tesseract -l %s --psm %s\n' "$dpi" "$lang" "$psm"
    printf '# Page numbers below are PDF page numbers, not necessarily printed page numbers.\n'
    printf '# OCR text may be used for search and textual judgment.\n'
    printf '# Check large displayed formulas, graphs, commutative diagrams, and Hasse diagrams in the original PDF image.\n'
    printf '\n'
  } > "$out"

  empty_pages=0
  for ((page = 1; page <= pages; page++)); do
    image="$tmp/page.png"
    rm -f "$image"

    printf '===== OCR PDF page %d / %d: %s =====\n' "$page" "$pages" "$base" >> "$out"

    if ! pdftoppm -r "$dpi" -gray -png -singlefile -f "$page" -l "$page" "$pdf" "$tmp/page" >/dev/null 2>&1; then
      printf '[pdftoppm failed on this page; inspect original PDF]\n\n' >> "$out"
      empty_pages=$((empty_pages + 1))
      continue
    fi

    if ! "$TESSERACT_BIN" "$image" stdout -l "$lang" --psm "$psm" >> "$out" 2>> "$out"; then
      printf '\n[tesseract failed on this page; inspect original PDF]\n' >> "$out"
      empty_pages=$((empty_pages + 1))
      printf '\n' >> "$out"
      continue
    fi

    chars=$(tail -n 80 "$out" | tr -d '[:space:]' | wc -c | awk '{ print $1 }')
    if [[ "$chars" =~ ^[0-9]+$ && "$chars" -lt 20 ]]; then
      printf '\n[very little OCR text extracted on this page; inspect original PDF image]\n' >> "$out"
      empty_pages=$((empty_pages + 1))
    fi
    printf '\n' >> "$out"
  done

  if [[ $empty_pages -gt 0 ]]; then
    printf '\n# OCR warning: %d page(s) produced very little text or failed. Use the PDF for those pages.\n' "$empty_pages" >> "$out"
  fi

  printf 'wrote: %s\n' "$out"
}

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
project_root=$(cd -- "$script_dir/.." && pwd)
pdf_dir="$project_root/references/pdfs"
text_dir="$project_root/references/text"

force=0
dpi=300
lang=eng
psm=1
pdf_args=()

while (($#)); do
  case "$1" in
    --force)
      force=1
      ;;
    --dpi)
      shift
      dpi=${1:-}
      ;;
    --lang)
      shift
      lang=${1:-}
      ;;
    --psm)
      shift
      psm=${1:-}
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      pdf_args+=("$1")
      ;;
  esac
  shift
done

if [[ ! "$dpi" =~ ^[0-9]+$ || "$dpi" -lt 150 ]]; then
  printf 'error: --dpi must be an integer >= 150\n' >&2
  exit 1
fi

if [[ ! "$psm" =~ ^[0-9]+$ ]]; then
  printf 'error: --psm must be an integer\n' >&2
  exit 1
fi

if [[ ${#pdf_args[@]} -eq 0 ]]; then
  printf 'error: at least one PDF is required for OCR\n' >&2
  usage >&2
  exit 1
fi

require_command pdfinfo
require_command pdftoppm
setup_tesseract
mkdir -p "$text_dir"

for arg in "${pdf_args[@]}"; do
  ocr_pdf "$(resolve_pdf "$arg")"
done
