# 完成 PDF 末尾の参考文献方針

このメモは，完成 PDF 末尾の参考文献欄を作るときの方針である。

## 基本方針

- 完成 PDF 末尾の参考文献欄には，この PDF で実際に使った文献だけを載せる。
- 主テキストに元からある参考文献を機械的に再掲しない。
- 本文中の注釈では，ページ番号・定理番号・節番号・URL など，実際に使った箇所を具体的に書く。
- 末尾一覧では，個別引用箇所ではなく書誌情報を中心にまとめる。
- 書誌情報は推測で補わない。

## 書き方

日本語文献では，著者名，書名，出版社，版，年を確認する。
欧文書籍では，著者名，書名，シリーズ名，巻，出版社，年，DOI が分かる場合は DOI を書く。
講義ノートや Web PDF では，著者名，タイトル，所属または講義名，公開年または確認日，URL を書く。

## 新しく参考文献が増えた場合

1. 追加時点で `final/references.tex` に直行させない。
2. `references/REFERENCE_INDEX.md` に登録する。
3. 本文での使用箇所を `references/notes/` に記録する。
4. 実際に本文・脚注・証明補足・訳語確認で使ったか確認する。
5. 書誌情報を確認する。
6. 完成 PDF 末尾へ追加する。

## 雛形

```tex
\subsection*{参考文献}

\begin{enumerate}
  \item 著者名，『書名』，出版社，年。
  \item Author, \emph{Title}, Publisher, year.
  \item Author, \emph{Title}, lecture notes, URL, accessed YYYY-MM-DD.
\end{enumerate}
```
