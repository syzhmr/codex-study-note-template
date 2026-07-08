# プロジェクト設定

このファイルは，テンプレートをコピーした後に最初に埋めるプロジェクト固有の設定である。
Codex は `WORKFLOW_STEPS.md` を入口として読み，このファイルで対象プロジェクトの前提を確認する。

## 基本情報

- プロジェクト名: [例: 代数的整数論勉強ノート]
- 完成版ノートの目的: [例: ゼミ発表後に配布できる教科書風ノート]
- 想定読者: [例: 修士課程の学生，該当分野の初学者]
- 使用言語: 日本語
- LaTeX エンジン: upLaTeX
- ビルドコマンド: `latexmk -g -dvi -interaction=nonstopmode main_final.tex`

## 配布・共有

- プロジェクト GitHub URL: [未設定]
- テンプレート URL: <https://github.com/syzhmr/codex-study-note-template>
- 推奨 devcontainer URL: <https://github.com/syzhmr/LaTeX/tree/main/.devcontainer>
- 共有しない資料: 主テキスト PDF，個人ノート，権利上再配布できない参考文献 PDF，ビルド生成物。
- Git 管理する例外資料: [例外があれば理由，権利，容量を記録する]

## 主テキスト

- 主テキスト名: [著者名，書名または講義ノート名]
- 配置場所: `sources/text/[ファイル名]`
- 本文で尊重する要素: 定義，命題，補題，定理，例，注意，節番号，証明の骨格。
- 注意: 主テキストの文章を長く逐語的に写さず，完成版ノートとして再構成する。

## ユーザー作成ノート

- ノート名: [例: 第1章手書きノート]
- 配置場所: `sources/user_notes/[ファイル名]`
- 役割: 理解の順序，証明の粒度，図式，注意点，補足，疑問点を反映するための主資料。
- 優先度: ノートがある範囲では，説明密度と証明の行間を最優先で確認する。
- 色・記号の意味: [例: 赤字=修正，青字=補足，黄色=参考文献候補]
- 旧版資料の扱い: [旧版ノートや古い抽出画像を使うか，使わないか]

## 参考文献

- 参考文献 PDF は `references/pdfs/` に置く。
- 検索用テキスト，OCR テキスト，Nougat 出力は `references/text/` に置く。
- 参考文献の棚卸しは `references/REFERENCE_INDEX.md`，`references/notes/reference_toc_classification.md`，`references/notes/reference_inventory_full.md` に書く。
- 本文で使った箇所は `references/notes/` に記録する。
- ローカル PDF を使う場合でも，可能なら公開 URL，定理番号，節番号，ページ番号を確認する。
- 未確認のページ番号・定理番号を推測で書かない。
- OCR 環境: [例: システム tesseract / 共有 .venv-ocr / 未設定]
- Nougat 環境: [例: 共有 tools/nougat / 未設定]
- ユーザー作成ノートの OCR: 原則として行わない。例外がある場合だけ，理由，対象，確認方法をここに記録する。

## 用語・文体

- 用語辞書: `TERM_DICTIONARY.md`
- 用語候補: `TERM_DICTIONARY_CANDIDATES.md`
- 文体資料: `references/notes/japanese_style.md`，`sources/translation_style/`
- 証明執筆方針: `references/notes/proof_writing_guidance.md`
- 可換図式: 通常の同型関係に `\cong`，射上の同型ラベルに `\sim` を用い，縦矢印の同型ラベルは矢印方向に合わせて回転させる。元や所属記号が書かれた図式では，元の位置・`\in` の向き・矢印ラベル・同型記号を図式の一部として扱い，本文の文章だけで省略しない。
- チルダとハット: `\tilde{}`，`\widetilde{}`，`\sim` と `\hat{}`，`\widehat{}` を必ず区別して照合する。
- 用語の好み: [例: 人名は英字を保つ / 漢字表記にする]
- 未承認語の扱い: 本文へ直接入れず，候補辞書またはユーザー確認に回す。

## 作業単位

- 原則として小小節単位で改訂する。
- 各小小節ごとに，本文改訂，通常査読，ビルド，独立査読を行う。
- 広い範囲の依頼がある場合でも，証明密度の確認が追いつく単位に分割する。

## 未決定事項

- 用語の好み:
- 証明を詳しく書きたい箇所:
- 参考文献の扱い:
- 図式や表記の方針:
- Git に入れる例外資料:
