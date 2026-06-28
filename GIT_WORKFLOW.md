# Git 運用メモ

このテンプレートは，Codex との共同編集を Git で管理することを必須とする。
Git は単なるバックアップではなく，Codex の作業監査ログとして使う。

## 関連 URL

- テンプレート: <https://github.com/syzhmr/codex-study-note-template>
- 推奨 devcontainer: <https://github.com/syzhmr/LaTeX/tree/main/.devcontainer>

## 基本方針

- 作業開始時に `git status --short --branch` を確認する。
- 作業後に `git diff` を確認する。
- 小小節ごと，または明確な作業単位ごとに commit する。
- 内容変更とソース整形だけの変更は，できるだけ別 commit にする。
- 方針ファイルの変更は，本文改訂とは分けて commit する。
- ビルド生成物，主テキスト PDF，ユーザー作成ノート，参考文献 PDF は，原則として Git に入れない。
- `sources/text/`，`sources/user_notes/`，`references/pdfs/` の中身は `.gitignore` で除外する。
- 参考文献を本文で使った場合は，PDF そのものではなく `references/REFERENCE_INDEX.md` や `references/notes/` に根拠を記録する。

## Git identity

Git の `user.name` と `user.email` は，原則として global 設定で一元管理する。
個別リポジトリの local 設定は，特別な理由がある場合だけ使う。

確認:

```sh
git config --global user.name
git config --global user.email
git config --local --get user.name
git config --local --get user.email
```

## Codex に依頼するとき

作業前に，Codex に次を確認させる。

```text
WORKFLOW_STEPS.md を入口として読み，作業前に git status を確認し，既存の変更を壊さないでください。
変更後は git diff を確認し，TeX 本文を変更した場合はビルドしてください。
```

Codex が作業した後は，次を確認する。

```sh
git status --short --branch
git diff
```

## commit の目安

本文改訂:

```sh
git add final/ references/notes/ REVISION_CANDIDATES.md
git commit -m "Revise section 1.1.1"
```

方針変更:

```sh
git add README.md WORKFLOW_STEPS.md NOTE_POLICY.md HANDWRITTEN_PROOF_POLICY.md LATEX_SOURCE_POLICY.md TERM_DICTIONARY.md
git commit -m "Update note revision policy"
```

参考文献台帳:

```sh
git add references/REFERENCE_INDEX.md references/notes/
git commit -m "Record references for chapter 1"
```

## 大容量 PDF

GitHub は通常 Git blob で 100MB 超のファイルを拒否する。
Git LFS を使わない運用では，次の順で対応する。

1. その PDF を Git 管理する必要が本当にあるか確認する。
2. 権利上共有できるか確認する。
3. 共有する必要がある場合は，章・部・付録など意味のある単位で分割し，各ファイルを 100MB 未満にする。
4. 元 PDF は `.gitignore` 対象のローカル保管資料にする。
5. 分割版の範囲，ページ数，元 PDF との関係を `references/notes/` または `references/pdfs/.../README.md` に記録する。
6. すでに未 push commit に 100MB 超 PDF を入れた場合は，後続 commit で削除しても push は通らない。未 push commit を amend し，巨大 blob を履歴から外す。

## 共有時の注意

- 著作権や配布条件が不明な PDF は commit しない。
- 個人の手書きノートや未公開資料は，研究室内で共有してよいか確認する。
- `.gitignore` を外して PDF を追加する場合は，理由を commit message と参考文献台帳に残す。
- 研究室共通テンプレートと，各人の個別ノートプロジェクトは分けて管理する。
