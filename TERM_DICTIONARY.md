# FO 用語辞書

このファイルは、完成版ノートで使う用語・避ける表現・許可待ちの表現を管理する。
この辞書の運用方針も，軽量化ではなく再現性のために手順化する。改訂時は `WORKFLOW_STEPS.md` の「方針変更で読む」に従い，関連方針との重複，長文化，判断順の曖昧さを確認する。

## 運用

1. まず `WORKFLOW_STEPS.md` で作業型を確認する。
2. 対象語をこの辞書で検索する。
3. 「承認済み」にあれば，本文で使う表現に従う。
4. 「使用しない」にあれば，本文へ入れない。
5. 「許可待ち」にあれば，本文へ入れる前にユーザー確認を取る。
6. 辞書にない場合は，まず FO 本文の表現に従う。
7. 日本語参考文献群に定着した訳語がある場合は，それを優先する。
8. Galois 表現，Krull 位相，profinite 群，局所体，分岐理論，Galois cohomology，保型形式などの表現は，`references/pdfs/整数論サマースクール2009/` の日本語を優先的に確認する。
9. 可換環論・加群論など，証明中に出る標準的な代数学用語の日本語が不自然に見える場合は，`sources/translation_me/ring.pdf` を優先的に確認する。
10. 洋書や英語講義ノートを日本語へ移すときの言い回しは，必要に応じて `sources/translation_me/` の数学英語資料も確認する。
11. 採用・不採用・保留の判断をこの辞書に追記する。

`sources/translation_me/` は数学的主張の根拠ではなく、英語表現を自然な数学日本語へ移すための表現資料および日本語数学用語の確認資料として扱う。
`sources/translation_me/ring.pdf` は，可換環論・加群論の用語確認に使う。数学的主張の根拠として使う場合だけ，通常の参考文献と同じく確認箇所を記録する。
`sources/translation_me/2015_Class_Field_Theory.pdf` は，類体論・局所体・イデール論・分岐理論の用語確認に使う。数学的主張の根拠として使う場合だけ，通常の参考文献と同じく確認箇所を記録する。
この資料群から採用する訳語や言い回しは、確認した PDF 名と必要ならページを控えた上で、この辞書の該当欄に追加する。

## 承認済み

| FO/英語表現 | 本文で使う表現 | 備考 |
|---|---|---|
| semi-linear | 半線形 | 初出では必要に応じて semi-linear を併記する。 |
| functor | 関手 | 圏論の標準語として用いる。2026-06-30 ユーザー確認済み。 |
| quasi-inverse functor | 準逆関手 | 圏論の標準語として使用可。 |
| natural transformation | 自然変換 | 圏論の標準語として用いる。2026-06-30 ユーザー確認済み。 |
| full functor | 充満関手 | 「充満な関手」とは書かない。2026-06-30 ユーザー確認済み。 |
| faithful functor | 忠実関手 | 「忠実な関手」とは書かない。2026-06-30 ユーザー確認済み。 |
| Yoneda lemma | 米田の補題 | 人名は漢字で書く。2026-06-30 ユーザー確認済み。 |
| Yoneda embedding | 米田埋め込み | 必要時のみ用いる。2026-06-30 ユーザー確認済み。 |
| fully faithful | 忠実充満 | 参考文献群では「充満忠実」も確認したが、日本語としての自然さを優先し、本原稿では「忠実充満」に統一する。 |
| fully faithful exact functor | 忠実充満な完全関手 | 「完全忠実」などとは書かない。 |
| exact functor | 完全関手 | 参考文献群で多く確認。 |
| faithful tensor functor | 忠実なテンソル関手 | Chapter 3 の Tannakian 圏の文脈で用いる。 |
| exact faithful tensor functor | 完全かつ忠実なテンソル関手 | FO の exact and faithful tensor functor。 |
| essential image | 本質的像 | 初出で essential image を併記し，必要なら nLab と Mathlib の定義ページを脚注に入れる。参考文献リストには入れない。2026-06-29 ユーザー確認済み。 |
| essentially surjective | 本質的全射 | 日本語で用いてよい。 |
| tensor product | テンソル積 | 「tensor 積」は使わない。2026-06-30 ユーザー確認済み。 |
| dual | 双対 | $B$-dual, $F$-dual のように FO が区別している場合は原語を残す。 |
| commutative ring | 可換環 | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| ring homomorphism | 環準同型 | 「環の準同型」とは書かない。2026-06-30 ユーザー確認済み。 |
| \(A\)-algebra | \(A\)-代数 | TeX では `\(A\)-代数` と書く。説明文では必要に応じて「\(A\) 上の代数」も可。2026-06-30 ユーザー確認済み。 |
| ideal | イデアル | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| ideal quotient | イデアル商 | \((I:J)\) などを指す。2026-06-30 ユーザー確認済み。 |
| principal ideal | 単項イデアル | `PID` の日本語説明では「単項イデアル整域」と書く。2026-06-30 ユーザー確認済み。 |
| principal ideal domain | PID／単項イデアル整域 | `PID` を本文で使ってよい。日本語で説明する場合は「単項イデアル整域」と書く。2026-06-30 ユーザー確認済み。 |
| unique factorization domain | UFD／一意分解整域 | `UFD` を本文で使ってよい。日本語で説明する場合は「一意分解整域」と書く。2026-06-30 ユーザー確認済み。 |
| Noetherian ring / Noetherian module | Noether 環／Noether 加群 | 「ネーター環」「ネーター加群」とは書かない。2026-06-30 ユーザー確認済み。 |
| Artinian ring / Artinian module | Artin 環／Artin 加群 | 「アルティン環」「アルティン加群」とは書かない。2026-06-30 ユーザー確認済み。 |
| prime ideal | 素イデアル | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| maximal ideal | 極大イデアル | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| minimal prime ideal | 極小素イデアル | 「最小素イデアル」とは書かない。2026-06-30 ユーザー確認済み。 |
| associated prime | 素因子 | 加群・イデアルの associated prime。2026-06-30 ユーザー確認済み。 |
| embedded associated prime | 非孤立素因子 | 準素分解の文脈で用いる。2026-06-30 ユーザー確認済み。 |
| radical / Jacobson radical / nilradical | 根基／Jacobson 根基／冪零根基 | `radical` 系はこの訳語に統一する。2026-06-30 ユーザー確認済み。 |
| nilpotent element / idempotent element | 冪零元／冪等元 | 形容詞としては「冪零な」「冪等な」と書く。2026-06-30 ユーザー確認済み。 |
| reduced | 被約 | 環・スキームの文脈で用いる。2026-06-30 ユーザー確認済み。 |
| zero divisor / non-zero-divisor | 零因子／非零因子 | 「0 因子」は使わない。2026-06-30 ユーザー確認済み。 |
| primary ideal | 準素イデアル | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| primary decomposition | 準素分解 | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| minimal primary decomposition | 最短準素分解 | 既約な準素分解などと混同しないよう文脈で注意する。2026-06-30 ユーザー確認済み。 |
| quotient ring \(A/I\) | 剰余環 | `A/I` は原則として「剰余環」と書く。2026-06-30 ユーザー確認済み。 |
| residue field | 剰余体 | 局所環・DVR の文脈で用いる。2026-06-30 ユーザー確認済み。 |
| fraction field | 商体 | 整域の分数体を指す。2026-06-30 ユーザー確認済み。 |
| total quotient ring | 全商環 | 零因子を避けて局所化する環。2026-06-30 ユーザー確認済み。 |
| localization | 局所化 | 加群・環の両方で用いる。2026-06-30 ユーザー確認済み。 |
| local ring / semilocal ring | 局所環／半局所環 | `semilocal` は「半局所」と書く。2026-06-30 ユーザー確認済み。 |
| integral dependence / integral closure / integrally closed | 整従属／整閉包／整閉 | `integral over` は文脈に応じて「上整」と書く。2026-06-30 ユーザー確認済み。 |
| unit / group of units | 単元／単元群 | 環論では「単元」「単元群」と書く。局所体の単数群とは区別する。2026-06-30 ユーザー確認済み。 |
| integral domain | 整域 | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| valuation / valuation ring | 付値／付値環 | 標準的な可換環論・局所体の語として用いる。2026-06-30 ユーザー確認済み。 |
| discrete valuation / discrete valuation ring / DVR | 離散付値／離散付値環／DVR | `DVR` を本文で使ってよい。ただし `DVR（離散付値環）` の併記はしない。2026-06-30 ユーザー確認済み。 |
| Dedekind domain | Dedekind 整域 | 人名は英字を保つ。2026-06-30 ユーザー確認済み。 |
| finite type / finitely generated / finitely presented | 有限型／有限生成／有限表示 | `finite` の直訳と混同しない。2026-06-30 ユーザー確認済み。 |
| module-finite | 加群として有限生成 | 必要なら「\(A\) 上有限」と補足する。2026-06-30 ユーザー確認済み。 |
| Krull dimension | Krull 次元 | 人名は英字を保つ。2026-06-30 ユーザー確認済み。 |
| height | 高さ | 定理名では「Krull の標高定理」。2026-06-30 ユーザー確認済み。 |
| system of parameters | 巴系 | 可換環論文脈で用いる。2026-06-30 ユーザー確認済み。 |
| regular sequence | 正則列 | 非零因子列の文脈で用いる。2026-06-30 ユーザー確認済み。 |
| regular local ring | 正則局所環 | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| depth | 深さ | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| Cohen--Macaulay ring/module | Cohen--Macaulay 環／加群 | TeX では `Cohen--Macaulay` と書く。2026-06-30 ユーザー確認済み。 |
| Gorenstein ring | Gorenstein 環 | 人名は英字を保つ。2026-06-30 ユーザー確認済み。 |
| completion | 完備化 | \(I\)-進完備化などで用いる。2026-06-30 ユーザー確認済み。 |
| complete local ring | 完備局所環 | 標準的な可換環論の語として用いる。2026-06-30 ユーザー確認済み。 |
| Tannakian category | Tannakian 圏 | 日本語本文中では「圏」に統一する。 |
| neutral Tannakian category | neutral Tannakian 圏 | `neutral` は FO の術語として残し，「category」は「圏」と書く。 |
| strictly full subcategory | strictly full な充満部分圏 | FO の定義語。`strictly full` は無理に訳さず，subcategory は文脈に応じて「部分圏」「充満部分圏」と書く。 |
| profinite set | profinite 集合 | FO と手書きノートの用語に従う。 |
| profinite group | profinite 群 | 「profinite group」と混ぜない。 |
| open subgroup / closed subgroup | 開部分群／閉部分群 | profinite 群・位相群の文脈で用いる。2026-06-30 ユーザー確認済み。 |
| Pontryagin dual | Pontryagin 双対 | `Pontrjagin` とは書かない。2026-06-30 ユーザー確認済み。 |
| totally disconnected | 完全不連結 | 「全不連結」は使わない。 |
| Krull topology | Krull 位相 | 「Krull topology」と英語のまま書かない。 |
| basis / subbasis of a topology | 開基／準開基 | 位相の生成を述べるときは，準開基と開基を区別して書く。「位相の基底」は避ける。 |
| directed set | 有向集合 | 半順序集合の文脈で用いる。 |
| inverse system / projective system | 逆系（射影系） | 初出では別名を併記する。 |
| inverse limit / projective limit | 逆極限（射影極限） | 初出では別名を併記する。LaTeX では添字が下に出るよう `\varprojlim\limits_{...}` と書く。 |
| direct system | 順系 | 既存の「順極限」と整合させる。2026-06-30 ユーザー確認済み。 |
| direct limit / inductive limit | 順極限 | `\varinjlim` で表す極限。本文では「直極限」と書かない。2026-06-29 ユーザー確認済み。 |
| transition map / transition morphism | 推移写像 | 逆系の構造写像を地の文で呼ぶときに用いる。一般の圏の定義では，必要以上に用語化せず式と「射」で述べる。 |
| arithmetic Frobenius | 算術的 Frobenius | FO では arithmetic Frobenius。手書きノートには「数論的 Frobenius」と読める箇所があるが，本文では Chapter 2 との整合性も考えて「算術的 Frobenius」に統一する。 |
| geometric Frobenius | 幾何的 Frobenius | Chapter 2 の既存表現に合わせる。 |
| absolute Frobenius | 絶対 Frobenius | 「absolute Frobenius」と英語のまま混ぜない。 |
| decomposition subgroup | 分解群 | 初出で必要なら英語を併記する。本文では「decomposition subgroup」と混ぜない。 |
| finite extension / finite Galois extension | 有限次拡大／有限次 Galois 拡大 | 体の拡大では「有限拡大」「有限 Galois 拡大」と書かず，次数が有限であることを明示する。 |
| infinite extension / infinite Galois extension | 無限次拡大／無限次 Galois 拡大 | 体の拡大では「無限拡大」「無限 Galois 拡大」と書かない。 |
| finite separable/tame/abelian extension | 有限次分離拡大／有限次 tame 拡大／有限次アーベル拡大 | 修飾語が入る場合も「有限」を単独で使わず，「有限次」と書く。 |
| infinite tame/abelian/APF extension | 無限次 tame 拡大／無限次アーベル拡大／無限次 APF 拡大 | 修飾語が入る場合も「無限」を単独で使わず，「無限次」と書く。 |
| number field / algebraic number field | 代数体／数体 | 文脈に応じて「代数体」「数体」のどちらも用いてよい。2026-07-01 ユーザー確認済み。 |
| algebraic number | 代数的数 | `algebraic integer` は「代数的整数」。2026-07-01 ユーザー確認済み。 |
| finite field | 有限体 | 標準的な体論の語として用いる。2026-07-01 ユーザー確認済み。 |
| imperfect field / non-perfect field | 完全ではない体 | 「不完全体」と名詞化しない。文中では「体 \(k\) が完全ではない場合」「\(k\) が完全ではないなら」のように書く。2026-07-01 ユーザー確認済み。 |
| field extension | 体拡大／体の拡大 | 文脈に応じて「体拡大」「体の拡大」のどちらも用いてよい。2026-07-01 ユーザー確認済み。 |
| simple extension | 単拡大 | 体の拡大が 1 元で生成されることを表す。primitive element theorem は「原始元定理」と書く。「一元拡大」「単拡大定理」は使わない。2026-07-02 ユーザー確認済み。 |
| separable extension | 分離拡大 | 有限次の場合は「有限次分離拡大」と書く。2026-07-01 ユーザー確認済み。 |
| Galois extension | Galois 拡大 | 人名は英字を保つ。「ガロア拡大」とは書かない。2026-07-01 ユーザー確認済み。 |
| Galois group | Galois 群 | 人名は英字を保つ。「ガロア群」とは書かない。2026-07-01 ユーザー確認済み。 |
| field automorphism | 自己同型写像／体自己同型 | CFT2015 に従い「自己同型写像」を基本とする。体であることを明示する必要がある場合は「体自己同型」。2026-07-01 ユーザー確認済み。 |
| conjugate embedding / conjugate field / conjugate element | 共役写像／共役体／共役元 | 体の埋め込み・元の共役の文脈で用いる。2026-07-01 ユーザー確認済み。 |
| real embedding / complex embedding | 実埋め込み／複素埋め込み | 無限素点の説明で用いる。2026-07-01 ユーザー確認済み。 |
| complex conjugation | 複素共役写像 | 自己同型としての複素共役。2026-07-01 ユーザー確認済み。 |
| integral basis | 整基底 | 整数環の \(\mathbb Z\)-基底。「整数基」とは書かない。2026-07-01 ユーザー確認済み。 |
| discriminant | 判別式 | `relative discriminant` は「相対判別式」。2026-07-01 ユーザー確認済み。 |
| roots of unity | \(1\) の冪根 | \(\mu_K\), \(\mu_n\) の説明で用いる。2026-07-01 ユーザー確認済み。 |
| unit of a number/local field | 単数 | 環論の `unit` は「単元」だが，代数体・局所体では「単数」と書く。2026-07-01 ユーザー確認済み。 |
| unit group of a number/local field | 単数群 | 環論の `group of units` は「単元群」だが，代数体・局所体では「単数群」と書く。2026-07-01 ユーザー確認済み。 |
| fundamental system of units | 基本単数系 | Dirichlet の単数定理の文脈で用いる。2026-07-01 ユーザー確認済み。 |
| class number | 類数 | イデアル類群の位数。2026-07-01 ユーザー確認済み。 |
| prime ideal factorization / decomposition | 素イデアル分解 | 整イデアル・分数イデアルの分解。2026-07-01 ユーザー確認済み。 |
| prime above \(p\) | \(p\) の上にある素イデアル | \(P\mid p\) の本文表現。2026-07-01 ユーザー確認済み。 |
| extension of an ideal | イデアルの延長 | \(a\mathcal O_L\) の説明で用いる。2026-07-01 ユーザー確認済み。 |
| relative norm of ideals | 相対ノルム | イデアルの \(N_{L/K}\)。2026-07-01 ユーザー確認済み。 |
| relative degree \(f_{P\mid p}\) | 相対次数 | `residue degree` と同じ数を，CFT2015 の表現に合わせて「相対次数」と呼ぶ文脈を許容する。2026-07-01 ユーザー確認済み。 |
| ramified prime | 分岐する素イデアル | 形容詞としては「\(p\) が分岐する」と書く。2026-07-01 ユーザー確認済み。 |
| unramified extension | 不分岐拡大 | 既存の `unramified` 方針と整合。2026-07-01 ユーザー確認済み。 |
| totally ramified extension | 完全分岐拡大 | 既存の `totally ramified` 方針と整合。2026-07-01 ユーザー確認済み。 |
| different / different ideal | 共役差積 | CFT2015 用語。2026-07-01 ユーザー確認済み。 |
| non-archimedean valuation | 非アルキメデス付値 | 2026-07-01 の追加判断で，`Archimedes` 英字ではなくカタカナ表記へ変更。 |
| archimedean valuation | アルキメデス付値 | `non-archimedean valuation` と対にする。2026-07-01 の追加判断でカタカナ表記へ変更。 |
| \(p\)-adic valuation | \(p\) 進付値 | ハイフンなしの既存方針に合わせる。2026-07-01 ユーザー確認済み。 |
| valued field / valuation field | 付値体 | 付値 \(v\) を備えた体。2026-07-01 ユーザー確認済み。 |
| valuation ideal | 付値イデアル | 付値環の極大イデアル \(P\)。2026-07-01 ユーザー確認済み。 |
| \(P\)-adic order / \(\operatorname{ord}_P\) | \(P\) での位数 | \(P\) に関する加法的付値。2026-07-01 ユーザー確認済み。 |
| complete field | 完備体 | 付値・距離に関して完備な体。2026-07-01 ユーザー確認済み。 |
| Cauchy sequence | Cauchy列 | 「コーシー列」とは書かない。2026-07-01 ユーザー確認済み。 |
| extension of a valuation | 付値の延長 | 体拡大で付値を延長する文脈。2026-07-01 ユーザー確認済み。 |
| complete residue system | 完全代表系 | 剰余環の代表元集合。2026-07-01 ユーザー確認済み。 |
| Hensel's lemma | Hensel の補題 | 「Hensel の補題（単純根版）」と限定しない。必要な仮定は式で示す。2026-07-01 ユーザー確認済み。 |
| Krasner's lemma | Krasner の補題 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| Laurent series field | Laurent級数体 | 「ローラン級数体」とは書かない。2026-07-01 ユーザー確認済み。 |
| \(p\)-adic number field | \(p\) 進数体 | \(\mathbb Q_p\) の説明などで用いる。2026-07-01 ユーザー確認済み。 |
| \(p\)-adic integer ring | \(p\) 進整数環 | \(\mathbb Z_p\) の説明などで用いる。2026-07-01 ユーザー確認済み。 |
| relative local field | 相対局所体 | 有限次拡大 \(L/K\) が局所体になる文脈。2026-07-01 ユーザー確認済み。 |
| separable closure | 分離閉包 | \(K_s\) など。2026-07-01 ユーザー確認済み。 |
| algebraic closure | 代数閉包 | 体の代数閉包。2026-07-01 ユーザー確認済み。 |
| compositum | 合成体 | 体の合成体 \(LK_v\), \(L_1L_2\) など。2026-07-01 ユーザー確認済み。 |
| finite unramified extension | 有限次不分岐拡大 | 体の拡大では「有限次」を保つ。2026-07-01 ユーザー確認済み。 |
| maximal unramified extension / \(K^{ur}\) | 最大不分岐拡大 | 有限次不分岐拡大全体の合成体としての \(K^{ur}\)。2026-07-01 ユーザー確認済み。 |
| \(q\)-power Frobenius | \(q\) 乗 Frobenius 写像 | 既存の `Frobenius` 英字維持と整合させる。2026-07-01 ユーザー確認済み。 |
| basic system of neighborhoods | 基本近傍系 | 位相群・イデール群の単位元近傍で用いる。2026-07-01 ユーザー確認済み。 |
| locally compact | 局所コンパクト | 位相群・局所体・イデール群で用いる。2026-07-01 ユーザー確認済み。 |
| Hausdorff space | Hausdorff 空間 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| quotient topology | 商位相 | 剰余群・商群に入れる位相。2026-07-01 ユーザー確認済み。 |
| connected component | 連結成分 | イデール類群の連結成分など。2026-07-01 ユーザー確認済み。 |
| idèle volume / volume map | イデールの体積／体積写像 | \(V\colon J_K,C_K\to\mathbb R_{>0}\)。2026-07-01 ユーザー確認済み。 |
| \(S\)-unit | \(S\)-単数 | `\(S\)-` はハイフンを入れる。2026-07-01 ユーザー確認済み。 |
| profinite completion of \(\mathbb Z\) | \(\mathbb Z\) の profinite completion | \(\widehat{\mathbb Z}\) の説明。`profinite` は既存方針で英語維持。2026-07-01 ユーザー確認済み。 |
| Hilbert theorem 90 / Hilbert 90 | Hilbert 90 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| \(G\)-exact sequence | \(G\)-完全列 | `\(G\)-` はハイフンを入れる。2026-07-01 ユーザー確認済み。 |
| \(L\)-function | \(L\) 関数 | `\(L\)` の後にハイフンは入れない。2026-07-01 ユーザー確認済み。 |
| non-archimedean field | 非アルキメデス体 | `Archimedes` 英字ではなくカタカナ表記を使う。2026-07-01 ユーザー確認済み。 |
| complete non-archimedean field | 完備非アルキメデス体 | 章冒頭などで頻出する表現。2026-07-01 ユーザー確認済み。 |
| non-archimedean property / non-archimedean inequality | 非アルキメデス性／非アルキメデス三角不等式 | 付値・絶対値の性質を指す。2026-07-01 ユーザー確認済み。 |
| non-archimedean absolute value | 非アルキメデス絶対値 | 付値だけでなく絶対値でもカタカナ表記を使う。2026-07-01 ユーザー確認済み。 |
| base change | 基底変換 | 「基礎変換」は使わない。2026-07-01 ユーザー確認済み。 |
| extension of scalars / scalar extension | 係数拡大 | 表現や加群で係数環を広げる操作。2026-07-01 ユーザー確認済み。 |
| base extension of a representation | 係数拡大 | `L\otimes V` を `E^s\otimes V` にする箇所も，表現の「係数拡大」として扱う。2026-07-01 ユーザー確認済み。 |
| linearly disjoint | linearly disjoint | 「線形無関連」という訳語はあるが，本文では英語のまま置く。2026-07-01 ユーザー確認済み。 |
| radical closure | radical closure | 日本語訳を作らず英語のまま置く。必要なら初出で説明する。2026-07-01 ユーザー確認済み。 |
| perfect closure | perfect closure | 日本語訳を作らず英語のまま置く。2026-07-01 ユーザー確認済み。 |
| purely inseparable extension | 純非分離拡大 | radical/perfect closure の説明で使う。2026-07-01 ユーザー確認済み。 |
| Eisenstein polynomial | Eisenstein 多項式 | 人名は英字維持，`polynomial` は「多項式」。2026-07-01 ユーザー確認済み。 |
| minimal polynomial | 最小多項式 | 体拡大・整性の証明で用いる。2026-07-01 ユーザー確認済み。 |
| monic polynomial | モニック多項式／モニックな多項式 | 既存の `monic` は「モニック」。`monic 多項式` とは書かない。2026-07-01 ユーザー確認済み。 |
| kernel and cokernel | 核と余核 | 証明本文では `kernel と cokernel` とせず日本語に寄せる。2026-07-01 ユーザー確認済み。 |
| take inverse limits | 構成は「逆極限を取る」，完全性・同型性は「逆極限に通す」 | 証明中の動詞を整理するための文体ルール。2026-07-01 ユーザー確認済み。 |
| tensor with \([1/p]\) | \([1/p]\) でテンソルして...へ移す | 「\(p\) を逆にする」だけで済ませず，係数・方向を明示する。2026-07-01 ユーザー確認済み。 |
| \(p\)-adic completion | \(p\) 進完備化 | ハイフンなしの既存方針と整合。2026-07-01 ユーザー確認済み。 |
| filtration theorem / Lie filtration | filtration theorem／Lie filtration | `filtration` は英語維持。日本語を混ぜた「重さ filtration」型は避ける。2026-07-01 ユーザー確認済み。 |
| \(p\)-adic Lie extension | \(p\)-adic Lie extension | Galois 表現・Lie 周辺は英語優先。2026-07-01 ユーザー確認済み。 |
| closed subfield | 閉部分体 | 位相体の閉部分体。2026-07-01 ユーザー確認済み。 |
| separably closed field / separably closed | 分離閉体／分離閉 | `separable closure` は「分離閉包」。2026-07-01 ユーザー確認済み。 |
| algebraically closed field | 代数閉体 | `algebraic closure` は「代数閉包」。2026-07-01 ユーザー確認済み。 |
| finite totally ramified extension | 有限次完全分岐拡大 | `totally ramified extension` は「完全分岐拡大」。2026-07-01 ユーザー確認済み。 |
| natural isomorphism | 自然同型／自然な同型 | 関手間の自然変換としての同型を強調する場合は「自然同型」。一般の本文では参考文献群に従い「自然な同型」を優先する。 |
| isomorphism symbol | `\cong` | 同型を表す記号は `\cong` に統一する。`\simeq` は使わない。 |
| natural morphism / natural map | 自然な射／自然な写像 | 圏の射として述べる場合は「自然な射」を優先する。集合・位相空間など具体的写像なら「自然な写像」も可。 |
| natural projection | 自然な射影 | 参考文献群で確認。一度「自然な射影」と呼んだ対象・写像は，同じ文脈で「射影」と略さず「自然な射影」と書き続ける。直積や逆極限の成分を抜き出す射影には `\operatorname{pr}_i` を用いてよい。商集合・商環へ向かう写像や商の意味合いが強い図式では $\pi_i,\pi_n$ など $\pi$ 系を優先する。 |
| natural quotient map | 自然な商写像 | 商集合・商環へ向かう写像を強調する場合に用いる。記号は $\pi$ 系を優先する。 |
| unique morphism | 一意的な射 | 「一意な射」は使わない。 |
| canonical isomorphism | 自然な同型 | 参考文献群で「標準同型」「正準同型」は確認できなかったため使わない。必要な場合だけユーザー確認の上で「カノニカルな同型」を使う。 |
| canonical map | 標準写像／自然な射 | 参考文献群では「標準写像」が少数例あり。文脈ごとに判断し、同型には使わない。 |
| lattice | 格子 | Galois 表現の $\mathbb{Z}_\ell$-部分加群として使う場合。初出では必要に応じて lattice を併記する。2026-06-30 ユーザー確認済み。 |
| commutative diagram | 可換図式 | 「図式が可換である」「次の可換図式を得る」は可。図式の形状に基づく呼び方はしない。 |
| make the diagram commute | 図式を可換にする | 「次の図式を可換にする」と書く。「三角図式が可換」「四角図式」などとは書かない。 |
| compatible | 整合的である | 「整合する」は使わない。 |
| compatible system | 整合系 | Galois 表現の族の文脈で用いる。2026-06-30 ユーザー確認済み。 |
| strict compatible system | 厳整合系 | 「厳密整合系」とは書かない。2026-06-30 ユーザー確認済み。 |
| étale cohomology | étale cohomology | 英語のまま書き，必ず `étale` とアクセントを付ける。`etale cohomology`，`エタールコホモロジー` とは書かない。2026-06-30 ユーザー確認済み。 |
| étale algebra / étale morphism | エタール代数／エタール射 | 日本語参考文献群で確認。英語で残す場合は必ず `étale` と書く。$\varphi$-module では FO 表記も考慮する。 |
| étale $\varphi$-module | étale $\varphi$-module | FO 表記を保つ。`エタール $\varphi$-module` とは書かない。2026-06-29 ユーザー確認済み。 |
| monic | モニック | 「最高次係数が $1$」と説明的に言い換えず，本文では「モニック」を用いる。 |
| uniformizer | uniformizer | 「一様化元」と訳さず，FO の用語として原語を保つ。 |
| nth Witt polynomial | 第 $n$ 番目の Witt 多項式 | `W_n` の添字を指す表現。通常の次数と紛れるため「第 $n$ 次 Witt 多項式」は使わない。 |
| ring of Witt vectors over $A$ | $A$ 上の Witt 環 | 記号は $\mathbb{W}(A)$ を用いる。英語を混ぜず，「Witt ベクトルの環」とも書かない。 |
| ring of Witt vectors of length $n$ over $A$ | $A$ 上の長さ $n$ の Witt ベクトル環 | 記号は $\mathbb{W}_n(A)$ を用いる。「有限長 Witt ベクトル」は使わない。 |
| system of representatives | 代表系 | 剰余類ごとに代表元を取った集合を指す。個々の元を指すときは「代表元」と書く。 |
| shift map | シフト写像 | Verschiebung の説明で必要な場合だけ用いる。 |
| Teichmuller map | Teichmuller 写像 | Teichmuller 代表元を与える写像を指す。本文では「Teichmuller map」と英語のまま書かない。 |
| system of multiplicative representatives | 乗法的代表系 | 写像 $f\colon k\to A$ を明示した上で，その写像を指して使う。個々の元は「Teichmuller 代表元」と書く。 |
| affine group scheme | アフィン群スキーム | scheme は「スキーム」と書く。 |
| Frobenius map | Frobenius 写像 | 「Frobenius map」と英語のまま書かない。 |
| Tate module | Tate 加群 | 日本語参考文献群の用例に従う。必要に応じて初出で Tate module を併記する。2026-06-30 ユーザー確認済み。 |
| \(\ell\)-adic Tate module | \(\ell\) 進 Tate 加群 | `\(\ell\)-adic Tate module` と英語のまま書かない。2026-06-30 ユーザー確認済み。 |
| cyclotomic character | 円分指標 | Chapter 2 では「\(\ell\) 進円分指標」の形で使う。2026-06-30 ユーザー確認済み。 |
| abelian group | アーベル群 | 「Abel 群」と書かない。 |
| abelian variety | アーベル多様体 | 「Abel 多様体」と書かない。 |
| l-adic realization | \(\ell\) 進実現 | motive の realization を述べる場合。 |
| Galois representation | Galois 表現 | 「ガロア表現」とは書かない。2026-06-30 ユーザー確認済み。 |
| \(p\)-adic representation | \(p\) 進表現 | `\(p\)-adic representation` と英語のまま書かない。2026-06-30 ユーザー確認済み。 |
| \(\ell\)-adic representation | \(\ell\) 進表現 | `\(\ell\)-adic representation` と英語のまま書かない。2026-06-30 ユーザー確認済み。 |
| mod \(\ell\) representation | 法 \(\ell\) 表現 | `mod \(\ell\) representation` と英語のまま書かない。2026-06-30 ユーザー確認済み。 |
| integral \(\ell\)-adic representation | 整 \(\ell\) 進表現 | 格子を含む文脈などで使う。2026-06-30 ユーザー確認済み。 |
| finite flat Galois representation | 有限平坦 Galois 表現 | `finite flat` はここでは「有限平坦」と訳す。2026-06-30 ユーザー確認済み。 |
| characteristic polynomial | 特性多項式 | Galois 表現や線形変換の characteristic polynomial。英語のまま混ぜない。2026-06-30 ユーザー確認済み。 |
| semi-simple / semisimple | 半単純 | 表現・線形変換・圏の文脈で用いる。 |
| unramified representation | 不分岐表現 | \(I_K\) が自明に作用する \(\ell\) 進表現。形容的には「不分岐である」と書く。2026-06-30 ユーザー確認済み。 |
| good reduction | good reduction | \(\ell\) 進表現の文脈では FO の術語として英語を保つ。「良い還元」「良還元」と訳さない。2026-06-30 ユーザー確認済み。 |
| potentially good reduction | potentially good reduction | good reduction と同じく FO の術語として英語を保つ。「潜在的に良い還元」と訳さない。2026-06-30 ユーザー確認済み。 |
| semistable representation / semi-stable representation | 半安定表現 | \(\ell\ne p\) の局所体の \(\ell\) 進表現では，\(I_K\) が冪単に作用する表現。2026-06-30 ユーザー確認済み。 |
| potentially semistable representation / potentially semi-stable representation | 潜在的半安定表現 | 有限次拡大後に半安定表現になる表現。2026-06-30 ユーザー確認済み。 |
| semistable reduction | semistable reduction | 幾何・還元の術語として英語を保つ。「半安定還元」と訳さない。2026-06-30 ユーザー確認済み。 |
| strictly semistable | strictly semistable | 幾何・還元の術語として英語を保つ。「強半安定」と訳さない。2026-06-30 ユーザー確認済み。 |
| monodromy theorem | monodromy theorem | Galois 表現周辺の術語として英語を保つ。「モノドロミー定理」と訳さない。2026-06-30 ユーザー確認済み。 |
| Tate curve | Tate 曲線 | 日本語参考文献群の用例に従う。 |
| Frobenius reciprocity | Frobenius 相互律 | 表現論の標準用語として用いる。 |
| Künneth formula | Künneth 公式 | エタールコホモロジーのテンソル積・積多様体の文脈で用いる。 |
| Jordan block | Jordan ブロック | Jordan 標準形の各ブロックを指す場合に用いる。英語のまま `Jordan block` としない。 |
| Weil restriction | Weil restriction | スキーム・多様体・アーベル多様体に対する術語として原語を保つ。加群やベクトル空間の係数環を制限する操作とは区別する。2026-06-29 ユーザー確認済み。 |
| restriction of scalars for modules | スカラー制限 | 加群・ベクトル空間などで係数環を制限する操作に用いる。スキーム論的な Weil restriction には使わない。 |
| zeta function | ゼータ関数 | 有限体上の多様体のゼータ関数など。 |
| Weil conjectures | Weil 予想 | 「Weil conjectures」と英語のまま書かない。 |
| Weil number | Weil 数 | weight の定義で用いる。2026-06-30 ユーザー確認済み。 |
| Weil group | Weil 群 | `Weil group` と英語のまま書かない。2026-06-30 ユーザー確認済み。 |
| Weil--Deligne group | Weil--Deligne 群 | 本文中では `group` を英語のまま残さない。2026-06-30 ユーザー確認済み。 |
| Weil--Deligne representation | Weil--Deligne 表現 | Chapter 2 で用いる。2026-06-30 ユーザー確認済み。 |
| weight | 重さ | Galois 表現周辺でも `weight` 単独は「重さ」と書く。「ウェイト」は使わない。2026-06-30 ユーザー確認済み。 |
| pure | pure | Galois 表現周辺の術語として英語を保つ。「純」と訳さない。形容詞として使うときは「pure な幾何的表現」「pure な表現」のように書き，「pure 表現」と詰めない。2026-06-30, 2026-07-01 ユーザー確認済み。 |
| elementary representation | elementary 表現 | FO の術語として `elementary` を残す。「初等的表現」とは訳さない。 |
| weight filtration | weight filtration | `weight` と `filtration` を混ぜて訳さず，英語のまま書く。「重さ filtration」「重さフィルトレーション」は使わない。2026-06-30 ユーザー確認済み。 |
| weighted representation | weighted representation | Galois 表現周辺の術語として英語を保つ。「重さ付き表現」と訳さない。 |
| effective | effective | 強い日本語用例が確認できないため FO 術語として残す。定義では「代数的整数であること」を必ず明示する。 |
| algebraic integer | 代数的整数 | 「algebraic integer」と英語のまま混ぜない。 |
| flat | 平坦 | 加群・係数拡大の文脈で使う。`finite flat` など固有の組み合わせは周辺文献の表現も見て判断する。 |
| module | 加群 | 標準的な加群論の語として用いる。2026-06-30 ユーザー確認済み。 |
| left module / right module | 左加群／右加群 | 環を明示する場合は `左 \(A\)-加群`，`右 \(A\)-加群` と書いてよい。2026-06-30 ユーザー確認済み。 |
| bimodule | 両側加群 | 「双加群」とは書かない。2026-06-30 ユーザー確認済み。 |
| submodule | 部分加群 | 標準的な加群論の語として用いる。2026-06-30 ユーザー確認済み。 |
| quotient module | 剰余加群 | 加群の商を指す場合に用いる。「商加群」よりこちらを優先する。2026-06-30 ユーザー確認済み。 |
| projective module | 射影加群 | 標準的な加群論の語として用いる。2026-06-30 ユーザー確認済み。 |
| projective object | 射影対象 | 圏論文脈で用いる。2026-06-30 ユーザー確認済み。 |
| projective resolution | 射影分解 | 標準的なホモロジー代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| projective dimension | 射影次元 | 標準的なホモロジー代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| injective module | 入射加群 | 標準的な加群論の語として用いる。2026-06-30 ユーザー確認済み。 |
| injective object | 入射対象 | 圏論文脈で用いる。2026-06-30 ユーザー確認済み。 |
| injective resolution | 入射分解 | 標準的なホモロジー代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| injective dimension | 入射次元 | 標準的なホモロジー代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| flat module | 平坦加群 | 標準的な加群論の語として用いる。2026-06-30 ユーザー確認済み。 |
| flat dimension | 平坦次元 | 標準的なホモロジー代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| faithfully flat | 忠実平坦 | `faithfully flat` と英語のまま書かない。2026-06-30 ユーザー確認済み。 |
| exact sequence | 完全列 | 標準的なホモロジー代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| short exact sequence | 短完全列 | 標準的なホモロジー代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| split exact sequence | 分裂完全列 | 標準的なホモロジー代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| kernel / image / cokernel | 核／像／余核 | 標準的な代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| zero module | 零加群 | 標準的な加群論の語として用いる。2026-06-30 ユーザー確認済み。 |
| coimage | 余像 | 必要時のみ用いる。2026-06-30 ユーザー確認済み。 |
| Hom module / homomorphism module | Hom加群 | `Hom` は英字で残し，スペースを入れず「Hom加群」と書く。「準同型加群」とは書かない。2026-06-30 ユーザー確認済み。 |
| endomorphism ring | 自己準同型環 | 標準的な環・加群論の語として用いる。2026-06-30 ユーザー確認済み。 |
| free module | 自由加群 | 標準的な加群論の語として用いる。2026-06-30 ユーザー確認済み。 |
| structure theorem for finitely generated modules over a PID | PID 上有限生成加群の構造定理 | 自由部分，ねじれ部分，単因子を用いて説明する。2026-06-30 ユーザー確認済み。 |
| free part / torsion part | 自由部分／ねじれ部分 | PID/DVR 上の有限生成加群の構造定理で用いる。2026-06-30 ユーザー確認済み。 |
| invariant factor | 単因子 | PID/DVR 上の有限生成加群の構造定理の文脈でのみ用いる。行列の相似類では「有理標準形を定める多項式」などと説明する。2026-06-30 ユーザー確認済み。 |
| elementary divisor | elementary divisor | 訳さず英語を保つ。必要なら定義を添える。2026-06-30 ユーザー確認済み。 |
| basis | 基底 | 加群・ベクトル空間の基底を指す。位相では「開基」「準開基」と区別する。2026-06-30 ユーザー確認済み。 |
| generating system | 生成系 | 必要なら「生成元の集合」と説明する。2026-06-30 ユーザー確認済み。 |
| rank | 階数 | 加群では必要なら「階数（加群）」と明示する。2026-06-30 ユーザー確認済み。 |
| finite rank free module | 有限階数自由加群 | 「有限ランク自由加群」とは書かない。2026-06-30 ユーザー確認済み。 |
| dual module | 双対加群 | module を明示する文脈では「双対加群」と書く。2026-06-30 ユーザー確認済み。 |
| determinant | 行列式 | 標準的な線形代数の語として用いる。2026-06-30 ユーザー確認済み。 |
| annihilator | annihilator | 英語のまま書く。「零化イデアル」と訳さない。2026-06-30 ユーザー確認済み。 |
| torsion element / torsion module / torsion submodule | ねじれ元／ねじれ加群／ねじれ部分 | 加群論の通常語として日本語を用いる。 |
| torsion-free | torsion-free | `torsion-free` だけは英語のまま書く。「ねじれがない」と訳さない。2026-06-30 ユーザー確認済み。 |
| projective smooth variety | 射影的かつ滑らかな多様体 | 必要に応じて「\(K\) 上の」を補う。 |
| geometrically connected | 幾何的に連結 | 「幾何的連結」は避け，形容句として書く。2026-06-30 ユーザー確認済み。 |
| underlying topological space | underlying topological space | スキームの \(|X|\) を指す場合も英語のまま書く。「台位相空間」と訳さない。2026-06-30 ユーザー確認済み。 |
| support | support | 加群・層・表現などの support は英語のまま書く。「台」と訳すと混同しやすいため避ける。2026-06-30 ユーザー確認済み。 |
| reciprocal root | 逆根 | 初出では「逆根，すなわち多項式の根の逆数」と定義を述べる。2026-06-30 ユーザー確認済み。 |
| geometric representation | 幾何的表現 | `geometric` のみを術語として使う文脈では「幾何的」と書く。 |
| sub-Tannakian category | Tannakian 部分圏 | FO の sub-Tannakian category。 |
| abelian category | アーベル圏 | 「Abel 圏」と書かない。 |
| additive category | 加法圏 | 圏論の標準用語として用いる。 |
| mixed motive | 混合 motive | `motive` は現時点では FO 周辺の術語として残す。 |
| procyclic group | procyclic 群 | Chapter 2 では FO の術語として `procyclic` を残し，「群」を付ける。 |
| unipotent | 冪単 | 線形代数・代数群の文脈で用いる。 |
| nilpotent | 冪零 | 線形代数・環論の文脈で用いる。 |
| smooth | 滑らかな | スキーム・多様体の性質として使う場合。 |
| proper | 固有 | スキーム・多様体の性質として使う場合。 |
| proper smooth variety | 固有かつ滑らかな多様体 | 日本語参考文献群の用例に従う。2026-06-30 ユーザー確認済み。 |
| simple normal crossing | 単純正規交叉／simple normal crossing | 文脈に応じて日本語または英語で書く。2026-06-30 ユーザー確認済み。 |
| torsion point / \(\ell^n\)-torsion | 等分点／\(\ell^n\)-等分点の群 | 楕円曲線・アーベル多様体の Tate 加群で使う。 |
| supersingular | 超特異 | 楕円曲線の文脈で確認済み。 |
| ordinary | ordinary | 現時点では無理に訳さず FO の術語として残す。必要なら初出で「通常的」を併記する。 |
| complete discrete valuation field | 完備離散付値体 | 局所体の基本語として用いる。2026-06-30 ユーザー確認済み。 |
| ring of integers | 整数環 | 局所体の整数環。2026-06-30 ユーザー確認済み。 |
| prime element | 素元 | `uniformizer` は既存方針通り英語維持なので混同しない。2026-06-30 ユーザー確認済み。 |
| ramification index | 分岐指数 | 局所体・代数体拡大の文脈で用いる。2026-06-30 ユーザー確認済み。 |
| residue degree | 剰余次数 | 局所体・代数体拡大の文脈で用いる。2026-06-30 ユーザー確認済み。 |
| unramified | 不分岐 | 形容詞として一般に用いる。表現の性質としては「不分岐表現」を用いる。2026-06-30 ユーザー確認済み。 |
| totally ramified | 完全分岐 | 形容的には「完全分岐である」と書く。2026-06-30 ユーザー確認済み。 |
| inertia group | 惰性群 | `inertia group` と英語のまま書かない。2026-06-30 ユーザー確認済み。 |
| wild inertia group | 野性分岐群 | 「暴分岐群」ではなく「野性分岐群」と書く。2026-06-30 ユーザー確認済み。 |
| lower ramification group | 下付き分岐群 | 必要なら「第 \(i\) 下付き分岐群」の形で書く。2026-06-30 ユーザー確認済み。 |
| upper ramification group | 上付き分岐群 | 必要なら「第 \(u\) 上付き分岐群」の形で書く。2026-06-30 ユーザー確認済み。 |
| ramification filtration | ramification filtration | `filtration` を英語維持する方針に合わせ，この組も英語を保つ。2026-06-30 ユーザー確認済み。 |
| absolute ramification index | 絶対分岐指数 | 混標数の完備離散付値環で $v(p)$ を指す。 |
| absolutely unramified | 絶対不分岐 | 「absolutely unramified」と英語のまま書かない。 |
| reciprocity map | 相互写像 | 局所類体論では「局所類体論の相互写像」と書く。 |
| class field theory | 類体論 | 分野名。2026-07-01 ユーザー確認済み。 |
| class field | 類体 | `class field corresponding to H` は「\(H\) に対応する類体」と書く。2026-07-01 ユーザー確認済み。 |
| class field construction / class field construction problem | 類体構成／類体構成問題 | 具体的な体の構成問題として使う。2026-07-01 ユーザー確認済み。 |
| ideal class group | イデアル類群 | 代数体・Dedekind 整域のイデアル類群。2026-07-01 ユーザー確認済み。 |
| ray class group | 射類群 | 初出で `ray class group` を併記するかは本文の必要に応じて判断する。2026-07-01 ユーザー確認済み。 |
| modulus | modulus | 名詞としては英語のまま書き，「整因子」は使わない。2026-07-01 ユーザー確認済み。 |
| modulus \(m\) / modulo \(m\) | modulus \(m\)／\(m\) を法として | 名詞としては `modulus` を保つ。合同式の本文表現では「\(m\) を法として」と書く。2026-07-01 ユーザー確認済み。 |
| finite part / infinite part of a modulus | 有限部分／無限部分 | modulus \(\mathfrak m=\mathfrak m_0\mathfrak m_\infty\) の文脈で用いる。2026-07-01 ユーザー確認済み。 |
| congruence subgroup | 合同群 | 類体論の `congruence subgroup`。2026-07-01 ユーザー確認済み。 |
| fundamental inequality | 基本不等式 | 類体論の基本不等式。2026-07-01 ユーザー確認済み。 |
| fundamental equality | 基本等式 | 類体論の基本等式。2026-07-01 ユーザー確認済み。 |
| existence theorem | 存在定理 | 類体論の存在定理。2026-07-01 ユーザー確認済み。 |
| general reciprocity law | 一般相互法則 | `reciprocity map` とは区別する。2026-07-01 ユーザー確認済み。 |
| reciprocity law | 相互法則 | 平方剰余の相互法則など。2026-07-01 ユーザー確認済み。 |
| Artin symbol | Artin 記号 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| Frobenius element / Frobenius at \(P\) | \(P\) の Frobenius 写像 | 類体論・素イデアルの文脈で用いる。2026-07-01 ユーザー確認済み。 |
| decomposition group | 分解群 | `decomposition subgroup` と同じ運用。2026-07-01 ユーザー確認済み。 |
| decomposition field | 分解体 | 分解群に対応する中間体。2026-07-01 ユーザー確認済み。 |
| inertia field | 惰性体 | 惰性群に対応する中間体。2026-07-01 ユーザー確認済み。 |
| place | 素点 | 有限素点・無限素点を含む語。2026-07-01 ユーザー確認済み。 |
| finite place / infinite place | 有限素点／無限素点 | 代数体の素点の分類。2026-07-01 ユーザー確認済み。 |
| real place / complex place | 実素点／複素素点 | 無限素点の分類。2026-07-01 ユーザー確認済み。 |
| normalized valuation | 正規化された付値 | `normalized trace map` とは別。2026-07-01 ユーザー確認済み。 |
| product formula | 積公式／正規化された付値の積公式 | 代数体の正規化された付値については「正規化された付値の積公式」と書く。2026-07-01 ユーザー確認済み。 |
| completion at \(v\) | \(v\) に関する完備化 | \(K_v\) の説明で用いる。2026-07-01 ユーザー確認済み。 |
| local field / global field | 局所体／大域体 | 代数体・関数体・完備離散付値体の文脈で用いる。2026-07-01 ユーザー確認済み。 |
| idèle / idele | イデール | 長音表記。`idele` は本文では「イデール」と書く。2026-07-01 ユーザー確認済み。 |
| idèle group / idele group | イデール群 | \(J_K\) など。2026-07-01 ユーザー確認済み。 |
| idèle class group / idele class group | イデール類群 | \(C_K=J_K/K^\times\)。2026-07-01 ユーザー確認済み。 |
| restricted direct product | 制限直積 | イデール群の定義で用いる。2026-07-01 ユーザー確認済み。 |
| \(S\)-idèle | \(S\) イデール | TeX では `\(S\) イデール` と書く。英語表現を残す場合だけ `\(S\)-idèle`。2026-07-01 ユーザー確認済み。 |
| principal idèle | 主イデール | \(K^\times\) の元をイデールとみなす文脈。2026-07-01 ユーザー確認済み。 |
| idèle norm map | イデールのノルム写像 | \(J_L\to J_K\)。2026-07-01 ユーザー確認済み。 |
| norm map on idèle class groups | イデール類群のノルム写像 | \(C_L\to C_K\)。2026-07-01 ユーザー確認済み。 |
| norm residue map | ノルム剰余写像 | \((*,L/K)\colon J_K\to\operatorname{Gal}(L/K)\)。2026-07-01 ユーザー確認済み。 |
| norm residue symbol | ノルム剰余記号 | 節名では「ノルム剰余記号」。写像としては「ノルム剰余写像」。2026-07-01 ユーザー確認済み。 |
| local norm residue symbol | 局所ノルム剰余記号 | 局所化した \((*,L_w/K_v)\)。2026-07-01 ユーザー確認済み。 |
| fractional ideal | 分数イデアル | 可換環論・数論の標準語として用いる。2026-07-01 ユーザー確認済み。 |
| integral ideal | 整イデアル | 整数環のイデアル。2026-07-01 ユーザー確認済み。 |
| principal fractional ideal | 単項分数イデアル | \(S_\mathfrak m\) の定義周辺。2026-07-01 ユーザー確認済み。 |
| ideal norm | イデアルノルム | \(N_K\mathfrak a\) など。文脈上明らかな場合は単に「ノルム」も可。2026-07-01 ユーザー確認済み。 |
| relative discriminant | 相対判別式 | \(d_{L/K}\) など。2026-07-01 ユーザー確認済み。 |
| splitting law / decomposition law | 分解法則 | 素イデアルの分解を述べる文脈。2026-07-01 ユーザー確認済み。 |
| completely split / split completely | 完全分解 | 形容的には「完全分解する」「完全分解である」と書く。2026-07-01 ユーザー確認済み。 |
| finite abelian extension | 有限次アーベル拡大 | 類体論の文脈で用いる。2026-07-01 ユーザー確認済み。 |
| cyclic extension | 巡回拡大 | 標準的な体の拡大の語として用いる。2026-07-01 ユーザー確認済み。 |
| maximal abelian extension | 最大アーベル拡大 | \(K^{ab}\)。2026-07-01 ユーザー確認済み。 |
| Herbrand quotient | Herbrand 商 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| Kummer theory | Kummer 理論 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| Chebotarev density theorem | Chebotarev の密度定理 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| Dirichlet unit theorem | Dirichlet の単数定理 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| Dirichlet theorem on primes | Dirichlet の素数定理 | 人名は英字を保つ。2026-07-01 ユーザー確認済み。 |
| approximation theorem | 近似定理 | 代数体の素点に関する近似定理。2026-07-01 ユーザー確認済み。 |
| density | 密度 | 素イデアル集合の密度。2026-07-01 ユーザー確認済み。 |
| almost all prime ideals | ほとんど全ての素イデアル | 密度 \(0\) の例外を除く意味。2026-07-01 ユーザー確認済み。 |
| quadratic residue symbol | 平方剰余記号 | 平方剰余の文脈で用いる。2026-07-01 ユーザー確認済み。 |
| quadratic reciprocity law | 平方剰余の相互法則 | 「平方剰余相互法則」と詰めない。2026-07-01 ユーザー確認済み。 |
| supplementary law | 補充法則 | 「第二補充法則」など。2026-07-01 ユーザー確認済み。 |
| cyclotomic field | 円分体 | 既存の「円分指標」と整合。2026-07-01 ユーザー確認済み。 |
| quadratic field | 二次体 | 代数体の基本例。2026-07-01 ユーザー確認済み。 |
| conductor | 導手 | 局所類体論や Galois 表現の文脈で使う。2026-06-30 ユーザー確認済み。 |
| named theorem / theorem name | 確認済み名称だけ使用 | 定理名・補題名・構成名は固有名として扱う。FO 本文，原典，または標準的用例で確認できない名称を作らない。特に人名付き定理名や日本語名を作業側で勝手に作らない。内容で述べ，出典を脚注・メモに示す。2026-07-01 ユーザー指摘により追加。 |
| standard / well-known | 単独では使わない | 「標準的である」「よく知られている」だけで証明や引用の代わりにしない。仮定を本文で照合するか，証明するか，正確な引用箇所を示す。2026-07-01 ユーザー確認済み。 |
| unconfirmed Japanese term | 英語優先 | 訳語が未確定または不自然な場合は英語を優先する。新しい日本語候補は本文へ直接入れず，辞書候補としてユーザー確認に回す。2026-07-01 ユーザー確認済み。 |
| source as proof subject | 使用しない | 証明本文で「文献 X が示す」「Stacks Project の補題により」を主語にして進めない。本文では現在の記号で数学的内容を書き，出典は脚注・メモに分離する。2026-07-01 ユーザー確認済み。 |
| Serre's conductor theorem / conductor theorem | 使用しない | 「Serre の導手定理」「導手定理」と用語化しない。必要な場合は「局所類体論における導手と上付き番号の分岐群の対応」のように内容で述べ，脚注に Serre の該当箇所を示す。2026-07-01 ユーザー指摘により追加。 |
| Artin conductor | Artin 導手 | 人名は英字を保ち，`conductor` は「導手」と書く。2026-06-30 ユーザー確認済み。 |
| Swan conductor | Swan 導手 | 人名は英字を保ち，`conductor` は「導手」と書く。2026-06-30 ユーザー確認済み。 |
| finite flat group scheme | 有限平坦群スキーム | `finite flat` は「有限平坦」と書く。2026-06-30 ユーザー確認済み。 |
| unit filtration | 単数群の filtration | filtration 自体は英語を保ち，unit は「単数群」と書く。 |
| upper ramification filtration | upper ramification filtration | `ramification filtration` と同じく英語を保つ。 |
| trace | トレース | 線形代数的な trace も「跡」とは書かず「トレース」と書く。 |
| trace map | trace map／トレース写像 | 写像名として英語を保つ場合は `trace map`，日本語にする場合は「トレース写像」と書く。「跡写像」は使わない。2026-06-30 ユーザー確認済み。 |
| trace estimate | trace estimate | Sen80 と Tate's normalized trace map(s) の文脈では英語を保つ。「トレース評価」とは書かない。2026-06-30 ユーザー確認済み。 |
| normalized trace map | normalized trace map | Tate's normalized trace map 以外で一般に trace map の正規化を指す場合。英語のまま書き，「正規化トレース写像」「正規化跡写像」とは書かない。2026-06-30 ユーザー確認済み。 |
| Tate's normalized trace map | Tate's normalized trace map | FO Definition 1.100 と §4.3.2 では，個々の \(R_n\), \(R_r\) や構成を指すため単数 `map`。一続きの英語表現として扱い，「Tate の normalized trace map」とは書かない。2026-07-01 ユーザー確認済み。 |
| Tate's normalized trace maps | Tate's normalized trace maps | FO §10.1.1 (TS2) のように \(R_{H,n}\) の族を指す場合だけ複数 `maps`。単数・複数は FO 原文の対象に合わせる。2026-07-01 ユーザー確認済み。 |
| almost étale condition | almost étale である／almost étale の定義を満たす | FO/Sen80 の術語として `almost étale` を残すが，「almost étale 条件」は原則使わない。定義の項目を指す場合は「定義の (1) を満たす」のように書く。点なしの `almost etale` は使わない。 |
| Cohen ring | Cohen 環 | 本文では「Cohen ring」と英語のまま書かない。 |
| Cohen structure theorem | Cohen structure theorem | 定理名は英語のまま書く。「Cohen 構造定理」とは書かない。2026-07-01 ユーザー確認済み。 |
| filtration | filtration | 「フィルトレーション」と訳さず，FO の用語として原語を保つ。 |
| filtered group | filtered group | 「フィルトレーション付き群」と訳さず，FO の用語として原語を保つ。 |
| coordinates | 座標 | Witt 展開や strict $p$-ring の展開で用いる。本文では「coordinates」と英語のまま書かない。 |
| well-defined | 定義できる／定まる | 本文では英語のまま使わず、文脈に応じて自然な日本語にする。 |
| formal derivative | 形式的な微分 | Hensel の補題などで $F'$ を説明する場合に用いる。「導多項式」「形式微分」は使わない。 |
| strict p-ring | strict $p$-ring | FO の術語として原語を保つ。無理に日本語訳を作らない。 |
| p-basis | $p$-basis | FO の術語として原語を保つ。無理に日本語訳を作らない。 |
| Dedekind's lemma | Dedekind の補題 | 異なる体準同型・自己同型の線形独立性を指す場合。本文では「Dedekind の automorphisms の線形独立性」と混ぜない。 |
| cohomology | コホモロジー | 日本語本文では「cohomology」と英語のまま混ぜない。ただし論文題名や節見出しは原表記を保ってよい。 |
| continuous cohomology | 連続コホモロジー | \(H^n_{\mathrm{cont}}\) の本文説明で用いる。 |
| group cohomology | 群コホモロジー | 通常の群 cohomology を指す場合。 |
| Galois cohomology | Galois cohomology | 英語のまま書く。「Galois コホモロジー」と混ぜない。2026-06-30 ユーザー確認済み。 |
| cohomology class | コホモロジー類 | 「cohomology 類」「cohomology class」と混ぜない。2026-06-30 ユーザー確認済み。 |
| non-abelian cohomology | non-abelian cohomology | 英語を保つ。「非可換 cohomology」「非可換コホモロジー」とは書かない。2026-06-30 ユーザー確認済み。 |
| cochain / cochain complex | cochain／cochain complex | FO の式で定義される術語として原語を保つ。必要なら「cochain complex である」と書く。 |
| cocycle / coboundary | cocycle／coboundary | \(Z^n\), \(B^n\) の式で定義して用いる。無理に訳語を作らない。 |
| inflation / restriction | inflation／restriction | Galois cohomology の標準写像名として原語を保つ。本文では商写像による引き戻し，制限写像で意味を説明する。 |
| connecting map | 連結準同型 | アーベル群値の cohomology で使う。非可換 pointed set の場合は文脈に応じて「connecting map」も許容する。 |
| section | section | 連続な集合論的 section のように用いる。無理に「切断」と訳さない。 |
| topological G-module | topological $G$-module | FO の術語として原語を保つ。本文中の説明では「位相可換群」「連続作用」を用いて意味を明示する。 |
| discrete G-module | discrete $G$-module | FO の術語として原語を保つ。本文中の説明では離散位相と安定化群が開部分群であることを明示する。 |
| topological G-group | topological $G$-group | FO の術語として原語を保つ。本文中の説明では「位相群」「連続作用」「各元が群自己同型として作用すること」を明示する。 |
| topological group | 位相群 | 「位相付き群」は使わない。2026-06-29 ユーザー確認済み。 |
| topological module | 位相付き加群 | 一般の位相環上の加群を指す場合に用いる。加法とスカラー倍の連続性が必要な文脈では本文で明示する。2026-06-29 ユーザー確認済み。 |
| pointed set | pointed set | 非可換 \(H^1\) の値域として FO の術語を保つ。本文では基点と完全性の意味を必ず説明する。 |
| distinguished point | 基点 | 非可換 \(H^1\) の pointed set では，自明な cocycle の類を指す。必要なら初出で「自明な cocycle の類」と説明する。 |
| \(B\)-representation | \(B\)-representation | Chapter 3 の FO 術語として原語を保つ。 |
| free \(B\)-representation | free \(B\)-representation | Chapter 3 の FO 術語として原語を保つ。 |
| trivial \(B\)-representation | trivial \(B\)-representation | Chapter 3 の FO 術語として原語を保つ。 |
| Tate twist | Tate twist | 英語のまま書く。「Tate 捻り」と訳さない。2026-06-30 ユーザー確認済み。 |
| monodromy operator | モノドロミー作用素 | Weil--Deligne 表現や半安定還元の文脈で用いる。2026-06-30 ユーザー確認済み。 |
| nilpotent operator | 冪零な線形写像 | 「冪零作用素」は標準的だが，本文ではまず平易に「冪零な線形写像」と書く。 |
| length | 長さ | 定義で明示して使う。Witt ベクトルの「長さ \(n\)」とは文脈で区別する。 |
| regular \((F,G)\)-ring / \((F,G)\)-regular | regular \((F,G)\)-ring／\((F,G)\)-regular | Chapter 3 の FO 術語として原語を保つ。地の文では「regular であること」と書く。 |
| admissible / \(B\)-admissible | admissible／\(B\)-admissible | Chapter 3 の FO 術語として原語を保つ。地の文では定義を添えて使う。 |
| snake lemma | 蛇の補題 | 標準的な補題名として用いる。2026-06-30 ユーザー確認済み。 |
| five lemma | 5項補題 | アラビア数字で書く。2026-06-30 ユーザー確認済み。 |
| Nakayama's lemma | 中山の補題 | 人名は漢字で書く。2026-06-30 ユーザー確認済み。 |
| exterior algebra / exterior product | 外積代数／外積 | 文脈に応じて「外積代数」「外積」を使い分ける。2026-06-30 ユーザー確認済み。 |
| symmetric algebra / symmetric product | 対称代数／対称積 | 文脈に応じて「対称代数」「対称積」を使い分ける。2026-06-30 ユーザー確認済み。 |
| iterate / iteration | この操作を繰り返す／繰り返し適用する | 証明本文では「反復」を単独で多用しない。操作そのものを読者が追える場合は「この操作を繰り返す」，補題・等式・構成を何度も使う場合は「繰り返し適用する」と書く。繰り返しが有限段階で終わることが重要な場合は「この操作は有限回で止まる」も明示する。 |

## 参考文献群で確認した主な用例

確認対象: `sources/` と `references/` 以下の PDF 群。確認日: 2026-06-18。
日本語表現の優先確認対象として，`references/pdfs/整数論サマースクール2009/` を用いる。確認日: 2026-06-20。
翻訳・日本語表現の確認では，追加で `sources/translation_me/` の資料も参照する。数学英語資料は確認日: 2026-06-20。可換環論・加群論の日本語用語確認では `sources/translation_me/ring.pdf` を参照する。追加日: 2026-06-30。類体論・局所体・イデール論の日本語用語確認では `sources/translation_me/2015_Class_Field_Theory.pdf` を参照する。追加日: 2026-07-01。

| 表現 | 確認数 | 運用 |
|---|---:|---|
| 自然な射 | 30 | natural map/morphism の基本訳として優先。 |
| 自然な同型 | 8 | natural/canonical isomorphism の通常表現として優先。 |
| 自然同型 | 2 | 関手間の自然変換としての同型を強調する場合に使う。 |
| 可換図式 | 22 | diagram が出る場合は「図式」と明示する。 |
| 図式が可換 | 8 | 可。 |
| 図式を可換 | 3 | 「図式を可換にする」の形で可。 |
| 完全関手 | 14 | exact functor の訳として使用。 |
| 充満忠実 | 2 | 参考用。本文では使わない。 |
| 忠実充満 | 1 | fully faithful の訳として本原稿で採用。 |
| テンソル積 | 47 | 使用。 |
| 双対 | 28 | 使用。 |
| エタール | 20 | エタールコホモロジー等で使用。 |
| 整合的 | 5 | 「整合する」ではなくこちらを使う。 |
| 標準写像 | 1 | canonical map の候補。濫用しない。 |
| 格子 | 9 | Galois 表現の lattice の訳として使用。 |
| Tate 捻り | 3 | 参考用。本文では使わず `Tate twist` と書く。 |
| Tate 加群 | 4 | Tate module の訳として使用。 |
| エタールコホモロジー | 20 | 参考用。本文では使わず，`étale cohomology` と書く。 |
| 特性多項式 | 1 | characteristic polynomial の訳として使用。 |
| 半単純 | 既存多数 | semi-simple / semisimple の訳として使用。 |
| ゼータ関数 | 1 | zeta function の訳として使用。 |
| Weil 予想 | 1 | Weil conjectures の訳として使用。 |
| Weil 数 | 1 | Weil number の訳として使用。 |
| 重さ | 複数 | weight の訳として使用。 |
| 純 | 複数 | 参考用。本文の Galois 表現周辺では `pure` と書く。 |
| 代数的整数 | 複数 | algebraic integer の訳として使用。 |
| 幾何的に連結 | 1 | geometrically connected の訳として使用。 |
| 台位相空間 | 1 | 参考用。本文では使わず，`underlying topological space` と書く。 |
| 逆根 | 1 | reciprocal root の訳として使用。 |
| procyclic 群 | 1 | procyclic group の表現として使用。 |
| 冪単 | 1 | unipotent の訳として使用。 |
| 冪零 | 1 | nilpotent の訳として使用。 |
| 固有かつ滑らかな | 1 | proper smooth の訳として使用。 |
| 超特異 | 1 | supersingular の訳として使用。 |

## 許可待ち

| 候補表現 | 用途 | 状態 |
|---|---|---|
| Groebner 基底 | Lemma 3.23 の次元計算の説明 | FO の文脈から離れるため，本文では現在使用しない。FO 本文・手書きノート・対象参考文献が明示的に必要とし，ユーザー確認がある場合だけ再検討する。 |
| Buchberger の判定法 | Lemma 3.23 の次元計算の説明 | FO の文脈から離れるため，本文では現在使用しない。FO 本文・手書きノート・対象参考文献が明示的に必要とし，ユーザー確認がある場合だけ再検討する。 |

## 使用しない

| 表現 | 理由 |
|---|---|
| 評価 pairing | 英語と日本語の混在が不自然。必要なら「評価写像」または双対基底で具体的に書く。 |
| tensor 積 | 「テンソル積」に統一する。 |
| 環の準同型 | 「環準同型」と書く。 |
| 双加群 | `bimodule` は「両側加群」と書く。 |
| 不変因子 | PID/DVR 上の有限生成加群の文脈では「単因子」と書く。行列の相似類では「有理標準形を定める多項式」などと説明する。 |
| 充満な関手 | `full functor` は「充満関手」と書く。 |
| 忠実な関手 | `faithful functor` は「忠実関手」と書く。 |
| Pontrjagin 双対 | `Pontryagin 双対` と書く。 |
| 不完全体 | 「完全ではない体」と書く。 |
| Cohen 構造定理 | `Cohen structure theorem` と英語のまま書く。 |
| regular 性 | 「regular であること」と書く。 |
| étale 性 | 「étale であること」と書く。 |
| 非可換 cohomology／非可換コホモロジー | `non-abelian cohomology` と書く。 |
| ネーター環／ネーター加群 | 「Noether 環」「Noether 加群」と書く。 |
| アルティン環／アルティン加群 | 「Artin 環」「Artin 加群」と書く。 |
| 最小素イデアル | 「極小素イデアル」と書く。 |
| 0 因子 | 「零因子」と書く。 |
| 商環 | `A/I` は「剰余環」と書く。 |
| dual の $\varphi$-module 構造 | 「双対の $\varphi$-module 構造」に統一する。 |
| 全不連結 | 「完全不連結」に統一する。 |
| 一意な射 | 「一意的な射」に統一する。 |
| 一意的同型を除いて一意的に定まる | 「同型を除いて一意的に定まる」に統一する。 |
| `\simeq` | 同型記号は `\cong` を使う。 |
| ただ一つの射 | 普遍性を述べる文脈では「一意的な射」に統一する。 |
| 三角図式が可換である／四角図式／重複図式 | 「次の図式が可換である」「次の図式を可換にする」または「次の可換図式を得る」と書く。図式を形状で呼ばない。 |
| 定理文の図式／定義文の図式／命題文の図式 | 「上に表示した図式」「次の図式」「この可換図式」など，本文の流れに沿って書く。 |
| 整合する | 「整合的である」「整合的な射の族」のように書く。 |
| 整合条件 | 式そのものを指す場合は「関係式」または「等式」と書く。逆極限の元を定める内容は「整合的である」「推移写像と両立する」と書き，「整合条件」という複合語は避ける。 |
| 集合表示 | 「集合による表示」と書く。省略した複合語は作為的に見えやすい。 |
| 位相の基底 | 「開基」または「準開基」を文脈に応じて使い分ける。 |
| 位相付き群 | 「位相群」と書く。 |
| 位相加群 | 「位相付き加群」と書く。 |
| 直極限 | 「順極限」と書く。 |
| 含まれる部分拡大 | 「含まれる拡大」と書く。意味が重複する。 |
| 有限拡大／有限 Galois 拡大 | 体の拡大では「有限次拡大」「有限次 Galois 拡大」に統一する。 |
| 無限拡大／無限 Galois 拡大 | 体の拡大では「無限次拡大」「無限次 Galois 拡大」に統一する。 |
| 有限分離拡大／有限 tame 拡大／有限 abelian 拡大 | 修飾語付きの体の拡大でも「有限次分離拡大」「有限次 tame 拡大」「有限次アーベル拡大」と書く。 |
| 無限 tame 拡大／無限 abelian 拡大／無限 APF 拡大 | 修飾語付きの体の拡大でも「無限次 tame 拡大」「無限次アーベル拡大」「無限次 APF 拡大」と書く。 |
| ガロア拡大／ガロア群 | 「Galois 拡大」「Galois 群」と書く。 |
| 整数基 | `integral basis` は「整基底」と書く。 |
| 非Archimedes的付値／Archimedes的付値 | 「非アルキメデス付値」「アルキメデス付値」と書く。 |
| 非アルキメデス的付値／アルキメデス的付値 | 「非アルキメデス付値」「アルキメデス付値」と書く。 |
| 非Archimedes的体／非Archimedes性／非Archimedes的絶対値 | 「非アルキメデス体」「非アルキメデス性」「非アルキメデス絶対値」と書く。 |
| コーシー列 | `Cauchy列` と書く。 |
| ローラン級数体 | `Laurent級数体` と書く。 |
| \(S\) 単数 | `\(S\)-単数` と書く。 |
| \(G\) 完全列 | `\(G\)-完全列` と書く。 |
| \(L\)-関数 | `\(L\) 関数` と書く。 |
| 基礎変換 | `base change` は「基底変換」と書く。 |
| 基底拡大 | 表現や加群の係数を広げる文脈では「係数拡大」と書く。 |
| 線形分離／線形無関連 | `linearly disjoint` と英語のまま書く。 |
| 完全閉包 | `perfect closure` と英語のまま書く。 |
| monic 多項式 | 「モニック多項式」または「モニックな多項式」と書く。 |
| kernel と cokernel | 「核と余核」と書く。 |
| kernel を取る／核を取る | 「左完全性により核に移る」「核に関する左完全性」など，文脈に合わせて書く。 |
| 合併と完備化を取る | 「合併を取り，さらに完備化する」と書く。 |
| 同じ向きの可換性を満たす | 図式を表示する場合は「次の図式が可換である」と書く。 |
| 標準同型／正準同型 | 現時点の参考文献群では確認できないため原則使わない。「自然な同型」を優先する。 |
| 充満忠実 | 参考文献群にはあるが、本原稿では「忠実充満」に統一する。 |
| 遷移射 | 逆系の構造写像を地の文で呼ぶ場合は「推移写像」に統一する。 |
| エタール $\varphi$-module | FO 表記 `étale $\varphi$-module` に統一する。 |
| ghost map／ghost components | 禁止。FO 本文と手書きノートでは名称を用いないため，本文では写像 $\rho$ と成分 $w_i$ で述べる。 |
| ghost 写像／ghost 成分 | 禁止。FO 本文と手書きノートでは名称を用いないため，本文では写像 $\rho$ と成分 $w_i$ で述べる。 |
| shift map | Verschiebung の説明では「シフト写像」と書く。 |
| etale／Etale | 英語で残す場合は `étale`／`Étale` とアクセントを付ける。検索時は点なし表記も漏れ確認の対象にする。 |
| Teichmuller map／Frobenius map | 「Teichmuller 写像」「Frobenius 写像」と書く。 |
| lattice | 「格子」と書く。 |
| Tate module | 「Tate 加群」と書く。 |
| \(\ell\)-adic Tate module | 「\(\ell\) 進 Tate 加群」と書く。 |
| Tate 捻り | `Tate twist` と書く。 |
| cyclotomic character | 「円分指標」と書く。 |
| Abel 群／Abel 多様体 | 「アーベル群」「アーベル多様体」と書く。 |
| characteristic polynomial | 「特性多項式」と書く。 |
| Galois representation | 「Galois 表現」と書く。 |
| \(p\)-adic representation | 「\(p\) 進表現」と書く。 |
| \(\ell\)-adic representation | 「\(\ell\) 進表現」と書く。 |
| mod \(\ell\) representation | 「法 \(\ell\) 表現」と書く。 |
| integral \(\ell\)-adic representation | 「整 \(\ell\) 進表現」と書く。 |
| finite flat Galois representation | 「有限平坦 Galois 表現」と書く。 |
| semistable representation | 「半安定表現」と書く。 |
| potentially semistable representation | 「潜在的半安定表現」と書く。 |
| 半安定還元 | `semistable reduction` と書く。 |
| 強半安定 | `strictly semistable` と書く。 |
| semi-simple／semisimple | 「半単純」と書く。 |
| Zeta 関数／zeta 関数 | 「ゼータ関数」と書く。 |
| Weil conjectures | 「Weil 予想」と書く。 |
| Weil number | 「Weil 数」と書く。 |
| Weil group | 「Weil 群」と書く。 |
| Weil--Deligne group | 「Weil--Deligne 群」と書く。 |
| Weil--Deligne representation | 「Weil--Deligne 表現」と書く。 |
| モノドロミー定理 | `monodromy theorem` と書く。 |
| monodromy operator | 「モノドロミー作用素」と書く。 |
| Frobenius semisimple | 「Frobenius 半単純」と書く。 |
| weight／ウェイト | 「重さ」と書く。 |
| 純 | Galois 表現周辺では `pure` と書く。 |
| pure 表現 | 「pure な表現」または文脈に応じて「pure な幾何的表現」と書く。 |
| 重さ filtration／重さフィルトレーション | `weight filtration` と書く。 |
| 重さ付き表現 | `weighted representation` と書く。 |
| Abel 圏 | 「アーベル圏」と書く。 |
| algebraic integer | 「代数的整数」と書く。 |
| projective smooth variety | 「射影的かつ滑らかな多様体」と書く。 |
| projective smooth geometrically connected variety | 「幾何的に連結な射影的かつ滑らかな多様体」と書く。 |
| 台位相空間 | 「underlying topological space」と書く。 |
| reciprocal roots | 「逆根」と書き，初出では根の逆数であることを定義として述べる。 |
| unipotent／nilpotent | 「冪単」「冪零」と書く。 |
| proper かつ smooth な variety | 「固有かつ滑らかな多様体」と書く。 |
| torsion subgroup | 楕円曲線・アーベル多様体では「等分点の群」と書く。 |
| system of representatives | 「代表系」と書く。個々の元は「代表元」と書いてよい。 |
| system of multiplicative representatives | 写像 $f\colon k\to A$ を明示し，その写像を「乗法的代表系」と呼ぶ。 |
| absolute ramification index／absolutely unramified | 「絶対分岐指数」「絶対不分岐」と書く。 |
| DVR（離散付値環） | 併記しない。文脈に応じて「DVR」または「離散付値環」のどちらか一方を書く。 |
| coordinates | Witt 展開や strict $p$-ring の展開では「座標」と書く。 |
| Cohen ring | 「Cohen 環」と書く。 |
| cohomology 類 | 「コホモロジー類」と書く。 |
| エタールコホモロジー | `étale cohomology` と書く。 |
| etale cohomology | `étale cohomology` とアクセントを付けて書く。 |
| Galois コホモロジー | `Galois cohomology` と書く。 |
| cohomology class | 「コホモロジー類」と書く。 |
| well-defined | 「定義できる」「定まる」など文脈に応じた日本語で書く。 |
| distinguished point | 「基点」と書く。非可換 \(H^1\) では自明な cocycle の類であることを明示する。 |
| 導多項式／形式微分 | Hensel の補題などで $F'$ を説明する場合は，「形式的な微分」と書く。 |
| 局所群 | 「各素点 $v$ で得られる絶対 Galois 群 $G_{\mathbb Q_v}$」などと具体的に書く。 |
| filtration | 「filtration」と書く。「フィルトレーション」は使わない。 |
| filtered group | 「filtered group」と書く。「フィルトレーション付き群」は使わない。 |
| 良い還元／良還元 | FO の good reduction は `good reduction` と書く。 |
| 商加群 | 加群の quotient module は「剰余加群」と書く。 |
| 準同型加群 | `Hom加群` と書く。 |
| Hom 加群 | `Hom加群` とスペースなしで書く。 |
| ねじれがない | `torsion-free` と書く。torsion element, torsion module, torsion submodule は日本語でよい。 |
| 零化イデアル | `annihilator` と書く。 |
| 台（サポート）／台 | support の訳としては使わず，`support` と書く。 |
| 跡／跡写像 | 「トレース」「trace map」「トレース写像」を用いる。 |
| トレース評価 | Sen/Tate 周辺では `trace estimate` と書く。 |
| 正規化トレース／正規化トレース写像 | `normalized trace map` と書く。Tate の構成を指す場合は `Tate's normalized trace map` と書く。 |
| 正規化トレース写像／正規化跡写像 | `normalized trace map` と書く。FO の (TS2) で族を指す場合だけ `Tate's normalized trace maps` と書く。 |
| Tate の normalized trace map | `Tate's normalized trace map` と一続きに書く。族を指す場合だけ `Tate's normalized trace maps` と書く。 |
| 局所体拡大の基底計算／基底計算 | 本文では独自の要約ラベルとして使わない。剰余体基底の持ち上げ，uniformizer の冪，\(x^r\varpi^j\) 型の基底表示など，実際に使う元と表示を書く。 |
| 大きい添字の段階／小さい添字の段階 | FO・手書きノートにない説明的な言い換えで、本文では作為的に見える。射の向きは式や図式で示す。 |
| 有限段階／各段階／各段 | 添字が明示されている場合は「各 \(n\) で」「任意の \(i\) について」のように書く。「有限段階」は逆極限・順極限・無限次拡大と対比する有限商や有限次部分拡大を指す場合だけ使う。 |
| ○○条件 | FO 内で定義された性質に対して，日本語の複合語として作らない。「○○である」「定義の (2) を満たす」「(TS1) を満たす」のように書く。原典で確認できる英語名 `conditions` は条件群全体の名称に限り使い，個別の確認では FO の項目名に戻す。 |
| 情報を忘れる向き | FO・手書きノートにない解釈説明。必要な場合は推移写像の式や可換図式で示す。 |
| Hensel の補題（単純根版） | 本文では単に「Hensel の補題」と書く。必要な仮定は式で示す。 |
| 一様化元 | `uniformizer` に統一する。 |
| 第 $n$ 次 Witt 多項式 | `W_n` の添字を指す箇所では「第 $n$ 番目の Witt 多項式」と書く。通常の次数と紛れるため。 |
| 〜になるように設計されている | FO 本文・手書きノートにない説明的な言い方。定義や等式そのもので述べる。 |
| 有限長 Witt ベクトル | 「$A$ 上の長さ $n$ の Witt ベクトル」と書く。 |
| Witt ベクトルの環 | 定義文では「$A$ 上の Witt 環」または「$A$ 上の長さ $n$ の Witt ベクトル環」と書く。 |
| \(p\) 反転／$p$ 反転 | 「\([1/p]\) でテンソルして有理係数へ移す」のように，方向を明示する。 |
| 合同計算 | 根拠が曖昧に見えるため，必要な合同式または「二項定理の議論」として具体的に書く。 |
| 自然な射影の後で | 「自然な射影を適用して」「自然な射影を適用すると」と書く。 |
| 有限段 | Witt ベクトルの等式確認では「各 $\mathbb{W}_{N+1}(A)$ への自然な射影を適用して」と書く。 |
| 普遍的な等式 | Witt ベクトルの成分計算では不用意に使わず，どの環のどの多項式等式か，または自然な射影で確認することを書く。 |
| 反復 | 証明本文では原則として避ける。「この操作を繰り返す」「繰り返し適用する」「この操作は有限回で止まる」を文脈に従って使い分ける。 |
