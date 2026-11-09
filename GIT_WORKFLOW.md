# Git 運用メモ

このテンプレートは，Codex との共同編集を Git で管理することを必須とする。
Git は単なるバックアップではなく，Codex の作業監査ログとして使う。
本文改訂，方針変更，参考文献台帳，修正文候補の変化を commit 単位で追えるようにする。
この Git 方針も，軽量化ではなく再現性のための手順化として扱う。改訂時は `WORKFLOW_STEPS.md` の「方針変更で読む」に従い，関連方針との重複，長文化，判断順の曖昧さを確認する。

## 関連 URL

- テンプレート: <https://github.com/syzhmr/codex-study-note-template>
- 推奨 devcontainer: <https://github.com/syzhmr/LaTeX/tree/main/.devcontainer>

## 作業開始

1. `WORKFLOW_STEPS.md` で作業型を決める。
2. `git status --short --branch` を確認する。
3. 未コミット変更がある場合は，自分の作業範囲と衝突しないか確認する。
4. `git var GIT_AUTHOR_IDENT` と `git var GIT_COMMITTER_IDENT` で identity を確認する。
5. ローカルの `user.name` / `user.email` は原則として置かず，global 設定を使う。プロジェクト固有の理由がある場合だけ local 設定を使い，理由を残す。

## 作業中

1. 方針変更，本文改訂，ソース整形，参考文献台帳，修正文候補を混ぜない。
2. TeX 本文を変更した場合は，小節または `subsubsection` ごとにビルドする。
3. ユーザーが作った未コミット変更は戻さない。
4. 生成物，主テキスト PDF，参考文献 PDF，ユーザー作成ノート，抽出画像は原則として Git に入れない。
5. 例外的に PDF や画像を Git 管理する場合は，`PROJECT_PROFILE.md` と `references/REFERENCE_INDEX.md` に理由，権利，容量，分割方針を記録する。
6. LaTeX 補助ファイル，ビルドキャッシュ，一時作業ディレクトリは Git に入れない。`*:Zone.Identifier` は見つけ次第削除し，Git に入れない。

## 作業後

1. `git diff` を確認する。
2. `git diff --check` を実行する。
3. commit する単位を決める。
4. 今回の依頼または適用中の常設の許可に従い、検証済みの今回の変更だけをcommitする。常設の許可がある環境では、設定済みの送信先への通常pushまで行い、毎回の確認は求めない。
5. 送信先先頭とコミット番号の一致、`git status --short --branch` を確認し、検証・commit・pushの結果と残した既存変更を報告する。未送信の場合は理由を報告する。

## commit 単位

本文改訂:

```sh
git add final/ references/notes/ REVISION_CANDIDATES.md
git commit -m "Revise section 1.1.1"
```

本文改訂に伴う根拠メモ・辞書・候補:

```sh
git add TERM_DICTIONARY.md TERM_DICTIONARY_CANDIDATES.md REVISION_CANDIDATES.md references/notes/
git commit -m "Record review notes for section 1.1.1"
```

方針変更:

```sh
git add README.md WORKFLOW_STEPS.md NOTE_POLICY.md HANDWRITTEN_PROOF_POLICY.md LATEX_SOURCE_POLICY.md GIT_WORKFLOW.md HANDWRITTEN_INDEX.md TERM_DICTIONARY.md TERM_DICTIONARY_CANDIDATES.md references/README.md references/REFERENCE_INDEX.md references/notes/
git commit -m "Update note revision workflow"
```

参考文献台帳:

```sh
git add references/REFERENCE_INDEX.md references/notes/
git commit -m "Record references for chapter 1"
```

修正文候補:

```sh
git add REVISION_CANDIDATES.md
git commit -m "Record independent review candidates"
```

PDF や画像を例外的に Git 管理する場合:

```sh
git add PROJECT_PROFILE.md references/REFERENCE_INDEX.md [approved-file]
git commit -m "Add approved local reference asset"
```

## 大容量 PDF

GitHub は通常 Git blob で 100MB 超のファイルを拒否する。
Git LFS を使わない運用では，次の順で対応する。

1. その PDF を Git 管理する必要が本当にあるか確認する。
2. 権利上共有できるか確認する。
3. 共有する必要がある場合は，章・部・付録など意味のある単位で分割し，各ファイルを 100MB 未満にする。
4. 元 PDF は `.gitignore` 対象のローカル保管資料にする。
5. 分割版の範囲，ページ数，元 PDF との関係を `references/notes/` または `references/pdfs/.../README.md` に記録する。
6. すでに未 push commit に 100MB 超 PDF を入れた場合は，後続 commit で削除しても push は通らない。履歴の修正案と対象を示し，個別の許可を得てから巨大 blob を履歴から外す。

## 共有時の注意

- 著作権や配布条件が不明な PDF は commit しない。
- 個人の手書きノートや未公開資料は，共有してよいか確認する。
- `.gitignore` を外して PDF を追加する場合は，理由を commit message と参考文献台帳に残す。
- 研究室共通テンプレートと，各人の個別ノートプロジェクトは分けて管理する。

## commit 実行条件

1. 今回の依頼または適用中の常設の許可があり、個別の停止指示や公開禁止に当たらない。
2. `git diff --check` が通っている。
3. TeX 本文変更ならビルド結果を確認済みである。
4. commit 対象が一つの意味単位にまとまっている。
5. `git var GIT_AUTHOR_IDENT` と `git var GIT_COMMITTER_IDENT` が通っている。

この条件を満たす作業単位ごとに、今回の依頼または適用中の常設の許可に従ってcommit・pushする。

## 送信前の確認と停止条件

作業前の変更・ステージ済み変更・未送信コミットを区別し、無関係な内容を混ぜない。
ファイル・差分を明示してステージし、送信される全コミットと既存の送信先を確認する。
相談・調査のみ、差分なし、個別の停止指示、ローカル保存専用・公開禁止の例外を尊重する。
送信先未設定・detached HEAD・認証失敗・push拒否・別セッションの書込み権などがある場合は、
該当操作を止めて理由を報告する。送信先作成・公開範囲変更・履歴書換え・強制push・フック回避は
常設の許可に含めない。必要な検証・資料の公開条件は省略しない。
