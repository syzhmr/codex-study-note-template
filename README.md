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
7. `TERM_DICTIONARY.md` と `TERM_DICTIONARY_CANDIDATES.md` をプロジェクトの用語方針に合わせて確認する。
   このテンプレートには，作成者の専門分野が整数論であることに由来して，可換環論，加群論，代数的整数論，局所体，分岐理論，Galois 表現，類体論など，整数論とその周辺分野の用語辞書がすでに入っている。
   関連分野では既存辞書を優先し，分野外のプロジェクトでは既存辞書を機械的に一般化せず，必要な語を `TERM_DICTIONARY_CANDIDATES.md` に候補として追加して確認する。
8. 最初の Codex 作業では，次のように依頼する。

```text
WORKFLOW_STEPS.md を入口として読み，PROJECT_PROFILE.md, NOTE_POLICY.md, HANDWRITTEN_INDEX.md, HANDWRITTEN_PROOF_POLICY.md, TERM_DICTIONARY.md, references/REFERENCE_INDEX.md を確認してから，対象範囲を小小節単位で改訂してください。
```

## フォルダ構成

- `WORKFLOW_STEPS.md`: Codex が最初に読む再現可能な作業手順。
- `PROJECT_PROFILE.md`: プロジェクト固有の設定。
- `NOTE_POLICY.md`: ノート作成の全体方針。
- `HANDWRITTEN_INDEX.md`: 主テキストとユーザー作成ノートの対応表。
- `HANDWRITTEN_PROOF_POLICY.md`: ユーザー作成ノートから証明を補完する方針。
- `LATEX_SOURCE_POLICY.md`: LaTeX ソースと定理環境の方針。
- `TERM_DICTIONARY.md`: 用語辞書。
- `TERM_DICTIONARY_CANDIDATES.md`: ユーザー確認前の用語候補。
- `REVISION_CANDIDATES.md`: ユーザー確認が必要な修正文候補。
- `GIT_WORKFLOW.md`: Git 運用方針。
- `main_final.tex`: 完成版ノートの親ファイル。
- `preemble.tex`: プリアンブル。定理環境，参照マクロ，ヘッダナビゲーション，局所証明終了記号を定義する。
- `final/`: 完成版ノートの LaTeX 本文。
- `sources/text/`: 主テキストや講義ノート。
- `sources/user_notes/`: 手書きノート，自作ノート，ゼミメモ。
- `sources/translation_style/`: 日本語文体・用語確認の参考資料。
- `references/pdfs/`: 補助参考文献 PDF。
- `references/text/`: 参考文献 PDF などから抽出した検索用テキスト，OCR テキスト，Nougat 出力。
- `references/REFERENCE_INDEX.md`: 参考文献台帳。
- `references/notes/README.md`: 参考文献メモの探し方。
- `references/notes/reference_toc_classification.md`: 参考文献の目次分類台帳。
- `references/notes/reference_inventory_full.md`: 参考文献の全件棚卸し台帳。
- `references/notes/handwritten_reference_aliases.md`: ユーザー作成ノート内の略記・色付き矢印の対応表。
- `references/notes/final_bibliography_style.md`: 完成 PDF 末尾の参考文献欄の方針。
- `references/notes/proof_writing_guidance.md`: 証明執筆の補助方針。
- `references/notes/japanese_style.md`: 日本語文体・句読点の補助方針。
- `scripts/`: 参考文献 PDF のテキスト抽出・OCR 補助スクリプト。
- `work/`: OCR，画像抽出，確認用メモなどの作業場所。

## 基本方針

- `AGENTS.md` 的な短い恒久ルールと `SKILL.md` 的な詳細手順は，現時点では実ファイルとして分離しない。ただし役割分担は採用する。初見モデルが常に読む原則は `README.md` と `WORKFLOW_STEPS.md` に置き，証明補完，参考文献確認，図式再現，LaTeX 整形など特定作業で使う長い手順は `HANDWRITTEN_PROOF_POLICY.md`，`LATEX_SOURCE_POLICY.md`，`references/notes/README.md` に置く。
- 将来 Lean を導入する場合は，この分担を移行の足場にする。現段階では Lean，`lake build`，`sorry`，Mathlib 名検索を通常運用に入れない。一方で，TeX 証明を将来形式化できるように，仮定，結論，依存補題，局所主張，hidden assumption，証明 obligation を分けて記録する。
- 主テキストの番号，順序，仮定，結論，記号，証明骨格を基準にする。
- ユーザー作成ノートは，説明密度，証明の粒度，図式，注意点，疑問点を学ぶための主資料として扱う。
- 広い範囲の再生成，1 からの作成，またはユーザー作成ノートとの差分確認を伴う改訂では，本文案を書く前に目標密度プロファイルを作る。主テキスト，ユーザー作成ノート，参考文献の三層を分け，証明補完を伴う場合は gap map と今回埋める obligation を固定する。
- 可換図式は省略せず，Milne の可換図式ガイド (<https://www.jmilne.org/not/Mtikz.pdf>) を参照して `tikzcd`，`matrix of math nodes`，直接 `\node` と `\path` による配置の順で TeX 化を検討する。生成画像では代替しない。同型は通常 `\cong` で書き，射の矢印上の同型ラベルには `\sim` を使う。縦矢印で同型を示す場合は，横向きの `\sim` のまま置かず，矢印方向に合わせて回転させる。元や所属記号が書かれた可換図式は文章だけに吸収せず，元の位置，`\in` の向き，矢印ラベル，同型記号を PDF 画像で目視確認する。
- チルダ系の記号 `\tilde{}`，`\widetilde{}`，`\sim` と，ハット系の記号 `\hat{}`，`\widehat{}` は混同しやすいため，主テキスト・ユーザー作成ノート・参考文献で個別に照合する。判読できない場合は推測で置かず，未確定記号として台帳に残す。
- ユーザー作成ノートは原則として OCR にかけない。参考文献 PDF，主テキスト PDF，完成版 PDF，訳語確認用 PDF は `references/text/` の抽出テキスト，OCR テキスト，Nougat 出力を検索補助として使い，表示数式，グラフ，可換図式，Hasse 図，符号，添字は原 PDF またはページ画像で確認する。
- 用語辞書は空の雛形ではない。整数論およびその周辺分野の既存用語が含まれているため，関連する語を新しく訳し直す前に必ず `TERM_DICTIONARY.md` を確認する。
- 既存辞書と衝突する訳語や，対象分野に依存する訳語は，本文へ直接入れず `TERM_DICTIONARY_CANDIDATES.md` に回す。
- 完成版では，作業資料名を本文に出さず，自然な数学本文として統合する。
- 「明らか」「同様」「標準的」で証明の行間を消さない。
- 地の文や注意の中に実質的な数学的主張がある場合は，必要に応じて `claim` や `lem` として切り出し，直後に証明または確認を書く。
- 参考文献は，本文を補強するために使う。引用箇所，定理番号，ページ番号，URL は推測で書かない。
- 出典は証明本文の主語にしない。本文では現在の対象，写像，仮定，結論を主語にして書き，出典情報は脚注または作業メモに分離する。
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
