# 検索用テキスト

このディレクトリには，`references/pdfs/` の PDF から抽出した検索用テキストを置く。
主テキスト PDF，完成版 PDF，訳語確認用 PDF など，検索に使う補助資料の抽出テキストもここに置いてよい。
通常のテキスト抽出には `scripts/extract-reference-text.sh`，スキャン PDF の OCR には `scripts/ocr-reference-text.sh` を使う。
数式主体の英語 PDF は，利用可能な Nougat 環境がある場合に `.mmd` も作る。
生成状況と低抽出ページは `OCR_QUALITY.md` に記録する。

## 生成

全 PDF を処理する。

```sh
scripts/extract-reference-text.sh
```

特定の PDF だけ処理する。

```sh
scripts/extract-reference-text.sh references/pdfs/example.pdf
```

既存の出力が新しくても作り直す。

```sh
scripts/extract-reference-text.sh --force
```

スキャン PDF を OCR する。

```sh
scripts/ocr-reference-text.sh references/pdfs/example-scanned.pdf
```

横書き日本語 PDF を OCR する。

```sh
scripts/ocr-reference-text.sh --lang jpn references/pdfs/example-japanese.pdf
```

英日混在 PDF を OCR する。

```sh
scripts/ocr-reference-text.sh --lang jpn+eng references/pdfs/example-mixed.pdf
```

Nougat で数式寄りの Markdown/LaTeX 化を行う。

```sh
NOUGAT_PDF_TO_MMD=/path/to/nougat-pdf-to-mmd.sh
"$NOUGAT_PDF_TO_MMD" --out references/text references/pdfs/example.pdf
```

共有作業環境で `../tools/nougat/nougat-pdf-to-mmd.sh` が使える場合は，次のようにしてよい。

```sh
../tools/nougat/nougat-pdf-to-mmd.sh --out references/text references/pdfs/example.pdf
```

## 運用

- 検索はまず `references/text/*.txt` に対して行う。
- スキャン PDF の OCR 結果は `*.ocr.txt` に置く。
- 横書き日本語 OCR は `--lang jpn`，英日混在 OCR は `--lang jpn+eng` を使う。
- Nougat の変換結果は `*.mmd` に置く。
- 参考文献 PDF はこの OCR / Nougat 運用で検索可能にする。ユーザー作成ノートは原則 OCR せず，原 PDF またはページ画像で確認する。
- `.txt` 内のページ番号は PDF 上のページ番号であり，印刷ページ番号とは一致しないことがある。
- 本文，小さめの数式，定理番号，ページ見出し，記号確認は抽出テキスト，OCR テキスト，または Nougat の `.mmd` で候補を拾ってよい。
- 大きい表示数式は Nougat の `.mmd` を優先し，引用や符号の厳密確認が必要な場合，または反復崩れ・欠落マーカーが出た場合は原典 PDF の該当ページ画像も見る。
- グラフ，可換図式，Hasse 図は，Nougat でページ候補を拾っても内容判断は原典 PDF の該当ページ画像で行う。
- 読解結果や本文との対応は `references/notes/` と `HANDWRITTEN_INDEX.md` の引き継ぎ欄に記録する。

検索例:

```sh
rg -n -C 2 "Fontaine|Witt|Tate|\\\\mathbb" references/text
```
