# Codex 勉強ノート作成テンプレート

このフォルダは，使用テキスト，ユーザー作成ノート，参考文献を指定して，Codex と共同で完成版の勉強ノートを作るための汎用テンプレートである。
特定の教科書，講義ノート，個人がダウンロードした PDF には依存しない。

## 最初に行うこと

1. このフォルダ全体を新しいプロジェクト名へコピーする。
2. `PROJECT_PROFILE.md` に，使用テキスト，ユーザー作成ノート，完成版ノートの目標を記入する。
3. 使用テキストを `sources/text/` に置く。
4. 手書きノートや自作ノートを `sources/user_notes/` に置く。
5. 参考文献 PDF を使う場合は `references/pdfs/` に置き，`references/REFERENCE_INDEX.md` に記録する。
6. Codex に作業を頼む前に，`NOTE_POLICY.md`，`TERM_DICTIONARY.md`，`HANDWRITTEN_INDEX.md` を必要に応じて更新する。

Codex に依頼するときは，まず次のように指示する。

```text
このフォルダの PROJECT_PROFILE.md, NOTE_POLICY.md, TERM_DICTIONARY.md, HANDWRITTEN_INDEX.md, references/REFERENCE_INDEX.md を確認してから，対象範囲の改訂を進めてください。
```

## フォルダ構成

- `main_final.tex`: 完成版ノートの親ファイル。
- `preemble.tex`: プリアンブル。
- `final/`: 完成版ノートの LaTeX 本文。
- `sources/text/`: 使用テキストや講義ノートなど，番号・順序の基準にする資料。
- `sources/user_notes/`: ユーザー作成ノート，手書きノート，補足メモ。
- `sources/translation_style/`: 英語資料を日本語本文へ移すときに参考にする文体資料。
- `references/pdfs/`: 補助参考文献 PDF。
- `references/notes/`: 参考文献の読解メモと使用箇所の記録。
- `work/`: 画像抽出，OCR，確認用メモなどの一時作業場所。

## 基本原則

- 使用テキストの番号，順序，仮定，結論を基準にする。
- ユーザー作成ノートは，理解の順序，証明の粒度，注意点，図式，補足を学ぶための主資料として扱う。
- 完成版は，使用テキストや手書きノートを見なくても読める教科書風ノートを目指す。
- 参考文献は本文を補強するために使い，本文の主導権を参考文献側へ移さない。
- 権利上共有できない PDF や個人資料は，このテンプレートには入れない。

## ビルド

```sh
latexmk main_final.tex
```

成功すると `main_final.pdf` と `main_final.synctex.gz` が生成される。
TeX 本文を編集した小節ごとにビルドする。

## Git 運用

このテンプレートは Git 管理して使うことを必須とする。
基本方針は `GIT_WORKFLOW.md` に従う。

共有するリポジトリには，テンプレート，方針ファイル，LaTeX ソース，参考文献台帳を入れる。
使用テキスト PDF，ユーザー作成ノート，参考文献 PDF，ビルド生成物は，原則として Git に入れない。
