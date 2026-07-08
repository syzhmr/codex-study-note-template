#!/usr/bin/env bash
set -euo pipefail

usage() {
  cat <<'USAGE'
Usage:
  scripts/extract-reference-text.sh [--force] [PDF ...]

Extract searchable text from reference PDFs into references/text/.

When no PDF is given, all PDFs under references/pdfs/ are processed.
Arguments may be full paths, paths relative to the current directory, filenames
under references/pdfs/, or basenames without the .pdf suffix.

Options:
  --force   Regenerate output even when it is newer than the source PDF.
  -h, --help
            Show this help.
USAGE
}

require_command() {
  if ! command -v "$1" >/dev/null 2>&1; then
    printf 'error: required command not found: %s\n' "$1" >&2
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

extract_pdf() {
  local pdf=$1
  local base out tmp pages page chars empty_pages source_label

  base=$(basename "$pdf")
  out="$text_dir/${base%.pdf}.txt"
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

  tmp=$(mktemp)
  trap 'rm -f "$tmp"' RETURN

  {
    printf '# Search text extracted from PDF\n'
    printf '# Source: %s\n' "$source_label"
    printf '# Generated: %s\n' "$(date -u '+%Y-%m-%dT%H:%M:%SZ')"
    printf '# Method: pdftotext -layout -enc UTF-8, one PDF page at a time\n'
    printf '# Page numbers below are PDF page numbers, not necessarily printed page numbers.\n'
    printf '# Text and ordinary formulas may be used for search and judgment.\n'
    printf '# Check large displayed formulas, graphs, commutative diagrams, and Hasse diagrams in the original PDF image.\n'
    printf '\n'
  } > "$out"

  empty_pages=0
  for ((page = 1; page <= pages; page++)); do
    printf '===== PDF page %d / %d: %s =====\n' "$page" "$pages" "$base" >> "$out"
    : > "$tmp"

    if ! pdftotext -layout -enc UTF-8 -f "$page" -l "$page" "$pdf" "$tmp"; then
      printf '[pdftotext failed on this page; inspect original PDF]\n\n' >> "$out"
      empty_pages=$((empty_pages + 1))
      continue
    fi

    chars=$(tr -d '[:space:]' < "$tmp" | wc -c | awk '{ print $1 }')
    tr '\f' '\n' < "$tmp" >> "$out"

    if [[ "$chars" =~ ^[0-9]+$ && "$chars" -lt 20 ]]; then
      printf '\n[very little text extracted on this page; inspect original PDF image]\n' >> "$out"
      empty_pages=$((empty_pages + 1))
    fi
    printf '\n' >> "$out"
  done

  if [[ $empty_pages -gt 0 ]]; then
    printf '\n# Extraction warning: %d page(s) produced very little or no text. Use the PDF for those pages.\n' "$empty_pages" >> "$out"
  fi

  printf 'wrote: %s\n' "$out"
}

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
project_root=$(cd -- "$script_dir/.." && pwd)
pdf_dir="$project_root/references/pdfs"
text_dir="$project_root/references/text"

force=0
pdf_args=()

while (($#)); do
  case "$1" in
    --force)
      force=1
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

require_command pdfinfo
require_command pdftotext
mkdir -p "$text_dir"

pdfs=()
if [[ ${#pdf_args[@]} -eq 0 ]]; then
  if [[ -d "$pdf_dir" ]]; then
    while IFS= read -r -d '' pdf; do
      pdfs+=("$pdf")
    done < <(find "$pdf_dir" -type f -iname '*.pdf' -print0 | sort -z)
  fi
else
  for arg in "${pdf_args[@]}"; do
    pdfs+=("$(resolve_pdf "$arg")")
  done
fi

if [[ ${#pdfs[@]} -eq 0 ]]; then
  printf 'No PDFs found under %s\n' "$pdf_dir" >&2
  exit 0
fi

for pdf in "${pdfs[@]}"; do
  extract_pdf "$pdf"
done
