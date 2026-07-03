# 参考文献メモの探し方

このディレクトリには，参考文献の読解メモ，目次分類，使用箇所，書誌情報の確認記録を置く。
このディレクトリは章別サブディレクトリに分けず，フラットに管理する。
多くの参考文献は章をまたいで使うため，配置ではなくファイル名，タグ，索引で探す。

## 探す順序

1. `reference_toc_classification.md` で，目次・冒頭に基づく全件分類と確認状態を確認する。
2. `reference_inventory_full.md` で分野タグ・概念タグ・優先度を確認する。
3. ユーザー作成ノート由来の略記・色付き矢印候補がある場合は，`handwritten_reference_aliases.md` で最初に照合する候補文献を確認する。
4. `../REFERENCE_INDEX.md` で既存の個別メモを確認する。
5. `chapterXX_...` のメモは主にその章で使った記録として読む。
6. 章をまたぐ内容は `chapterXX_bridge_...`，`..._reference_map.md`，または概念名を含むメモを優先して確認する。
7. ローカル PDF を読む。
8. ローカル資料で根拠が足りない場合だけ，信頼できる外部資料を検索する。

## 新規メモの命名

- 章に強く依存する場合: `chapterNN_section_topic.md`
- 章をまたぐ場合: `topic_or_bridge_name.md`
- ユーザー作成ノート内の略記対応表の場合: `handwritten_reference_aliases.md`
- 参考文献の全件目次分類の場合: `reference_toc_classification.md`
- 参考文献の棚卸し一覧の場合: `reference_inventory_full.md`
- 完成 PDF 末尾の参考文献一覧方針の場合: `final_bibliography_style.md`
- 証明執筆の一般方針の場合: `proof_writing_guidance.md`
- 日本語文体・句読点の方針の場合: `japanese_style.md`
- 査読記録の場合: `chapterNN_reference_based_review_YYYY-MM-DD.md`

メモを追加したら，必要に応じて `../REFERENCE_INDEX.md` に用途と確認箇所を追記する。

## メモに書くこと

- 文献名，著者，版，出版社，年。
- PDF または URL の所在。
- 目次または該当章の概要。
- 本文で使った定理・命題・補題・ページ・節。
- その文献を使った理由。
- 採用しなかった場合は不採用理由。

## 引用の注意

- 未確認のページ番号，定理番号，出版年は書かない。
- 本文中の注釈では，実際に使った箇所を具体的に書く。
- 末尾参考文献一覧では，ページ番号・定理番号ではなく書誌情報を中心にまとめる。
- 書籍の刊行情報が足りない場合は，出版社公式ページ，国会図書館，WorldCat，著者公式ページなどで確認する。
- 確認できない場合は「刊行情報未確認」と記録し，推測で補わない。

## 新しい参考文献が増えた場合

1. `references/pdfs/` または Web 参照として所在を記録する。
2. `references/REFERENCE_INDEX.md` に登録する。
3. 必要なら個別メモを作る。
4. 本文・脚注・訳語確認・証明補足で実際に使った箇所を記録する。
5. 実際に完成 PDF の本文で使った文献だけ，`final/references.tex` に追加する。

新しい参考文献を見つけた時点では，完成 PDF 末尾の参考文献一覧には入れない。
まず台帳または関連メモに登録し，本文で実際に使う箇所と用途を確認する。
本文，脚注，証明補足，訳語確認で使った後にだけ，`final_bibliography_style.md` に従って `../../final/references.tex` へ追加する。
