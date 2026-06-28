# Codex Study Note Template

このリポジトリは，数学書・講義ノート・手書きノート・参考文献をもとに，Codex と共同で「完成版だけで読める勉強ノート」を作るためのテンプレートである。
実プロジェクトで確立した運用を汎用化し，特定の教科書や個人資料には依存しない形にしている。

## 配布 URL

- テンプレート: <https://github.com/syzhmr/codex-study-note-template>
- 推奨 devcontainer: <https://github.com/syzhmr/LaTeX/tree/main/.devcontainer>

SSH で取得する場合:

```sh
git clone git@github.com:syzhmr/codex-study-note-template.git
```

devcontainer はこのテンプレート本体には同梱しない。
LaTeX/Codex 作業環境をそろえる場合は，上の `LaTeX` リポジトリの `.devcontainer` を参照する。

## 使い始め

1. このフォルダ全体を新しいプロジェクト名へコピーする。
2. `PROJECT_PROFILE.md` に，主テキスト，ユーザー作成ノート，完成版ノートの目的を記入する。
3. 主テキストを `sources/text/` に置く。
4. 手書きノート，自作ノート，講義メモを `sources/user_notes/` に置く。
5. 参考文献 PDF を使う場合は `references/pdfs/` に置き，`references/REFERENCE_INDEX.md` に登録する。
6. `HANDWRITTEN_INDEX.md` に，主テキストとユーザー作成ノートの対応を小小節単位で書く。
7. 最初の Codex 作業では，次のように依頼する。

```text
WORKFLOW_STEPS.md を入口として読み，PROJECT_PROFILE.md, NOTE_POLICY.md, HANDWRITTEN_INDEX.md, HANDWRITTEN_PROOF_POLICY.md, TERM_DICTIONARY.md, references/REFERENCE_INDEX.md を確認してから，対象範囲を小小節単位で改訂してください。
```

## フォルダ構成

- `WORKFLOW_STEPS.md`: Codex が最初に読む再現可能な作業手順。
- `PROJECT_PROFILE.md`: プロジェクト固有の設定。
- `NOTE_POLICY.md`: ノート作成の全体方針。
- `HANDWRITTEN_PROOF_POLICY.md`: 手書きノートから証明を補完する方針。
- `LATEX_SOURCE_POLICY.md`: LaTeX ソースと定理環境の方針。
- `TERM_DICTIONARY.md`: 用語辞書。
- `REVISION_CANDIDATES.md`: ユーザー確認が必要な修正文候補。
- `main_final.tex`: 完成版ノートの親ファイル。
- `preemble.tex`: プリアンブル。定理環境，参照マクロ，局所証明終了記号を定義する。
- `final/`: 完成版ノートの LaTeX 本文。
- `sources/text/`: 主テキストや講義ノート。
- `sources/user_notes/`: 手書きノート，自作ノート，ゼミメモ。
- `sources/translation_style/`: 日本語文体の参考資料。
- `references/pdfs/`: 補助参考文献 PDF。
- `references/notes/`: 参考文献の読解メモ，出典確認，使用箇所の記録。
- `work/`: OCR，画像抽出，確認用メモなどの作業場所。

## 基本方針

- 主テキストの番号，順序，仮定，結論を基準にする。
- ユーザー作成ノートは，説明密度，証明の粒度，図式，注意点，疑問点を学ぶための主資料として扱う。
- 完成版では，作業資料名を本文に出さず，自然な数学本文として統合する。
- 「明らか」「同様」「標準的」で証明の行間を消さない。
- 地の文や注意の中に実質的な数学的主張がある場合は，必要に応じて `claim` や `lem` として切り出し，直後に証明または確認を書く。
- 参考文献は，本文を補強するために使う。引用箇所，定理番号，ページ番号，URL は推測で書かない。
- 権利上共有できない PDF や個人資料は，テンプレート配布物には含めない。

## ビルド

```sh
latexmk -g -dvi -interaction=nonstopmode main_final.tex
```

成功すると `main_final.pdf` と `main_final.synctex.gz` が生成される。
TeX 本文を編集した場合は，小小節ごとにビルドする。

## Git 運用

このテンプレートは Git 管理して使う。
基本方針は `GIT_WORKFLOW.md` に従う。

共有するリポジトリには，テンプレート，方針ファイル，LaTeX ソース，参考文献台帳を入れる。
使用テキスト PDF，ユーザー作成ノート，参考文献 PDF，ビルド生成物は，原則として Git に入れない。
100MB を超える PDF を共有したい場合は，Git LFS を前提にせず，章・部・付録単位に分割して各ファイルを 100MB 未満にする運用を先に検討する。
