# Git 運用メモ

このテンプレートは，Codex との共同編集を Git で管理することを必須とする。
Git は，変更履歴の保存，差分確認，研究室内での共有，PDF や個人資料の除外に役立つ。
Git は単なるバックアップではなく，Codex の作業監査ログとして使う。

## 基本方針

- 作業開始時に `git status --short` を確認する。
- 作業後に `git diff` を確認する。
- 小小節ごと，または明確な作業単位ごとに commit する。
- 内容変更とソース整形だけの変更は，できるだけ別 commit にする。
- 方針ファイルの変更は，本文改訂とは分けて commit する。
- ビルド生成物，使用テキスト PDF，ユーザー作成ノート，参考文献 PDF は，原則として Git に入れない。
- `sources/text/`，`sources/user_notes/`，`references/pdfs/` の中身は `.gitignore` で除外する。
- 参考文献を本文で使った場合は，PDF そのものではなく `references/REFERENCE_INDEX.md` や `references/notes/` に根拠を記録する。

## Codex に依頼するとき

作業前に，Codex に次を確認させる。

```text
作業前に git status を確認し，既存の変更を壊さないでください。
変更後は git diff を確認し，TeX 本文を変更した場合はビルドしてください。
```

Codex が作業した後は，次を確認する。

```sh
git status --short
git diff
```

## commit の目安

本文改訂:

```sh
git add final/ NOTE_POLICY.md TERM_DICTIONARY.md references/notes/
git commit -m "Revise section 1.1.1"
```

方針変更:

```sh
git add NOTE_POLICY.md TERM_DICTIONARY.md LATEX_SOURCE_POLICY.md
git commit -m "Update note revision policy"
```

参考文献台帳:

```sh
git add references/REFERENCE_INDEX.md references/notes/
git commit -m "Record references for chapter 1"
```

## 共有時の注意

- 著作権や配布条件が不明な PDF は commit しない。
- 個人の手書きノートや未公開資料は，研究室内で共有してよいか確認する。
- `.gitignore` を外して PDF を追加する場合は，理由を commit message に残す。
- 研究室共通テンプレートと，各人の個別ノートプロジェクトは分けて管理する。
