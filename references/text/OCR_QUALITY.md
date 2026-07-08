# OCR 品質メモ

このファイルには，`references/text/` の生成状況，OCR 済み PDF，低抽出ページ，残リスクを記録する。
テンプレートをコピーした直後は空欄でよい。OCR や Nougat を実行したら，実行環境と対象をここに残す。

## 実行環境

- 通常抽出: `scripts/extract-reference-text.sh`
- スキャン PDF OCR: `scripts/ocr-reference-text.sh`
- Tesseract: [例: system tesseract / `.venv-ocr` / 未設定]
- Nougat: [例: `../tools/nougat/nougat-pdf-to-mmd.sh` / 未設定]

## 生成範囲

| 対象 | 出力 | 実行日 | 備考 |
|---|---|---|---|
| `references/pdfs/` | `references/text/*.txt` |  |  |

## OCR 実行済み

通常抽出が全ページまたは重要ページで薄い PDF は，必要に応じて Tesseract OCR を追加する。

| 出力 | 言語 | 理由 |
|---|---|---|
|  |  |  |

## 通常抽出の警告

一部ページで低抽出警告が出た PDF を記録する。
表紙，白紙，図版，装飾ページだけであれば本文利用上のリスクは低いが，証明・数式・図式に関わるページなら原 PDF またはページ画像で確認する。

| PDF | 低抽出ページ | 対応 |
|---|---:|---|
|  |  |  |

## 運用

- 通常検索では `references/text/*.txt` を使う。
- スキャン PDF 由来の内容確認では `*.ocr.txt` も併用する。
- 表示数式，図，可換図式，Hasse 図，符号や添字の厳密確認は原 PDF またはページ画像に戻る。
- ユーザー作成ノートは原則として OCR にかけない。ノート由来の内容は原 PDF またはページ画像で確認する。
