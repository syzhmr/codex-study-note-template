# 日本語用語辞書候補

このファイルは，ユーザー確認前の候補辞書である。ここにある訳語はまだ `TERM_DICTIONARY.md` の承認済み語ではない。
本文へ機械的に反映せず，ユーザーが「採用」「不採用」「保留」を判断したものだけを `TERM_DICTIONARY.md` へ移す。

## 作成方針

- 対象は，ユーザーがフォルダに追加した日本語 PDF 全体とする。
- FO で定義された術語は，原則として既存の `TERM_DICTIONARY.md` を優先する。
- 証明中に現れる標準的な可換環論・加群論・局所体・分岐理論の語について，日本語文献側の自然な表現を候補化する。
- 出典は数学的主張の根拠ではなく，用語・文体の根拠として扱う。ただし数学的主張に使う場合は別途箇所を確認する。
- 既存辞書と衝突する語は，候補表へ直接採用せず「衝突・要判断」に分ける。

## 確認した資料

主な根拠資料:

| 略号 | 資料 |
|---|---|
| Ring | `sources/translation_me/ring.pdf` |
| Matsuda | `references/pdfs/FO/加群について(松田).pdf` |
| AM-JP | `references/pdfs/FO/AM_Japanese.pdf` |
| Hattori | `references/pdfs/FO/参考文献/分岐理論と有限平坦Galois表現(服部).pdf` |
| SS2009 | `references/pdfs/整数論サマースクール2009/*.pdf` |
| ME | `sources/translation_me/` の数学英語資料 |
| CFT2015 | `sources/translation_me/2015_Class_Field_Theory.pdf` |

補足:

- `references/pdfs/FO/参考文献/楕円曲線のreductionについて.pdf` は対象に含めたが，現時点のテキスト抽出では実質的に本文を取得できなかった。
- `Ring` の索引は可換環論・加群論の語を広く含むため，この候補辞書では最重要の確認資料として扱う。

## A. 可換環論・環論

| FO/英語表現 | 候補日本語 | 判定案 | 根拠 | 運用メモ |
|---|---|---|---|---|
| commutative ring | 可換環 | ユーザー採用 | Ring, AM-JP | 標準語。 |
| ring homomorphism | 環準同型 | ユーザー採用 | Ring, Matsuda | 「環の準同型」とは書かない。 |
| \(A\)-algebra | \(A\)-代数 | ユーザー採用 | Ring, Matsuda | TeX では `\(A\)-代数` と書く。説明文では必要に応じて「\(A\) 上の代数」も可。 |
| ideal | イデアル | ユーザー採用 | Ring, AM-JP | 標準語。 |
| ideal quotient | イデアル商 | ユーザー採用 | Ring | \((I:J)\) など。 |
| principal ideal | 単項イデアル | ユーザー採用 | Ring, AM-JP | PID では「単項イデアル整域」。 |
| principal ideal domain | PID／単項イデアル整域 | ユーザー採用 | Ring, AM-JP | `PID` を本文で使ってよい。日本語で説明する場合は「単項イデアル整域」。 |
| unique factorization domain | UFD／一意分解整域 | ユーザー採用 | Ring, AM-JP | `UFD` を本文で使ってよい。日本語で説明する場合は「一意分解整域」。 |
| prime ideal | 素イデアル | ユーザー採用 | Ring, AM-JP | 標準語。 |
| maximal ideal | 極大イデアル | ユーザー採用 | Ring, Hattori | 標準語。 |
| minimal prime ideal | 極小素イデアル | ユーザー採用 | Ring | 「最小素イデアル」は避ける。 |
| associated prime | 素因子 | ユーザー採用 | Ring | 加群・イデアルの associated prime。 |
| embedded associated prime | 非孤立素因子 | ユーザー採用 | Ring | 準素分解の文脈。 |
| radical | 根基 | ユーザー採用 | Ring | `radical` 単独。 |
| Jacobson radical | Jacobson 根基 | ユーザー採用 | Ring | 人名は英字を保つ。 |
| nilradical | 冪零根基 | ユーザー採用 | Ring, AM-JP | 「ベキ零」は本文では使わない。 |
| nilpotent element | 冪零元 | ユーザー採用 | Ring, AM-JP | 形容詞は「冪零な」。 |
| idempotent element | 冪等元 | ユーザー採用 | Ring | 形容詞は「冪等な」。 |
| reduced | 被約 | ユーザー採用 | Ring | 環・スキームの文脈。 |
| zero divisor | 零因子 | ユーザー採用 | Matsuda, AM-JP | 「0 因子」は使わない。 |
| non-zero-divisor | 非零因子 | ユーザー採用 | Ring | 正則列の定義で使う。 |
| primary ideal | 準素イデアル | ユーザー採用 | Ring, AM-JP | 標準語。 |
| primary decomposition | 準素分解 | ユーザー採用 | Ring, AM-JP | 標準語。 |
| minimal primary decomposition | 最短準素分解 | ユーザー採用 | Ring | 文脈によって「既約な準素分解」と混同しない。 |
| quotient ring \(A/I\) | 剰余環 | ユーザー採用 | Ring, Matsuda | `A/I` は原則「剰余環」。 |
| residue field | 剰余体 | ユーザー採用 | Matsuda, Hattori | 局所環・DVR で使う。 |
| fraction field | 商体 | ユーザー採用 | Ring, Matsuda | 整域の分数体。 |
| total quotient ring | 全商環 | ユーザー採用 | Ring | 零因子を避けて局所化する環。 |
| localization | 局所化 | ユーザー採用 | Ring, Matsuda, AM-JP | 加群・環の両方。 |
| local ring | 局所環 | ユーザー採用 | Ring, AM-JP | 標準語。 |
| semilocal ring | 半局所環 | ユーザー採用 | Ring | `semi-local` の訳。 |
| unit | 単元 | ユーザー採用 | Ring, AM-JP | 環論では「単元」。局所体の単数群とは区別。 |
| group of units | 単元群 | ユーザー採用 | Ring | 環の可逆元全体。 |
| integral domain | 整域 | ユーザー採用 | Ring, AM-JP | 標準語。 |
| integral dependence | 整従属 | ユーザー採用 | Ring, AM-JP | `integral over` は「上整」。 |
| integral closure | 整閉包 | ユーザー採用 | Ring, AM-JP | 名詞。 |
| integrally closed | 整閉 | ユーザー採用 | Ring, AM-JP | 「整閉整域」も可。 |
| valuation | 付値 | ユーザー採用 | Ring, Hattori | 標準語。 |
| valuation ring | 付値環 | ユーザー採用 | Ring | 標準語。 |
| discrete valuation | 離散付値 | ユーザー採用 | Ring, Hattori | 標準語。 |
| discrete valuation ring | 離散付値環／DVR | ユーザー採用 | Ring, Hattori | `DVR` を本文で使ってよい。`DVR（離散付値環）` のように併記しない。 |
| Dedekind domain | Dedekind 整域 | ユーザー採用 | Ring | 人名は英字を保つ。 |
| Noetherian ring/module | Noether 環／Noether 加群 | ユーザー採用 | Ring | 「ネーター環」「ネーター加群」とは書かない。 |
| Artinian ring/module | Artin 環／Artin 加群 | ユーザー採用 | Ring | 「アルティン環」「アルティン加群」とは書かない。 |
| finite type | 有限型 | ユーザー採用 | Ring, Matsuda | 代数と加群で意味を確認して使う。 |
| finitely generated | 有限生成 | ユーザー採用 | Ring, Matsuda | `finite module` と混同しない。 |
| finitely presented | 有限表示 | ユーザー採用 | Ring, Matsuda | 加群・代数で使用。 |
| module-finite | 加群として有限生成 | ユーザー採用 | Matsuda | 必要なら「\(A\) 上有限」と説明。 |
| Krull dimension | Krull 次元 | ユーザー採用 | Ring, AM-JP | 人名は英字を保つ。 |
| height | 高さ | ユーザー採用 | Ring | 定理名では「Krull の標高定理」。 |
| regular sequence | 正則列 | ユーザー採用 | Ring | 非零因子列の文脈。 |
| regular local ring | 正則局所環 | ユーザー採用 | Ring | 標準語。 |
| system of parameters | 巴系 | ユーザー採用 | Ring | 可換環論文脈ではこの語を候補。 |
| depth | 深さ | ユーザー採用 | Ring | 標準語。 |
| Cohen--Macaulay ring/module | Cohen--Macaulay 環／加群 | ユーザー採用 | Ring | TeX では `Cohen--Macaulay`。 |
| Gorenstein ring | Gorenstein 環 | ユーザー採用 | Ring | 人名は英字を保つ。 |
| completion | 完備化 | ユーザー採用 | Ring, AM-JP | \(I\)-進完備化など。 |
| complete local ring | 完備局所環 | ユーザー採用 | Ring | 標準語。 |

## B. 加群論・ホモロジー代数

| FO/英語表現 | 候補日本語 | 判定案 | 根拠 | 運用メモ |
|---|---|---|---|---|
| module | 加群 | ユーザー採用 | Ring, Matsuda | 標準語。 |
| left/right module | 左加群／右加群 | ユーザー採用 | Matsuda | 必要なら `左 \(A\)-加群`，`右 \(A\)-加群` と明示してよい。 |
| bimodule | 両側加群 | ユーザー採用 | Matsuda | ユーザー判断で「双加群」ではなく「両側加群」。 |
| submodule | 部分加群 | ユーザー採用 | Ring, Matsuda | 標準語。 |
| quotient module | 剰余加群 | ユーザー採用 | Ring, Matsuda | 「商加群」ではなく「剰余加群」を本文標準にする。 |
| zero module | 零加群 | ユーザー採用 | Matsuda | 標準語。 |
| kernel | 核 | ユーザー採用 | Matsuda | 標準語。 |
| image | 像 | ユーザー採用 | Matsuda | 標準語。 |
| cokernel | 余核 | ユーザー採用 | Ring, Matsuda | 標準語。 |
| coimage | 余像 | ユーザー採用 | Ring | 必要時のみ。 |
| Hom module / homomorphism module | Hom加群 | ユーザー採用 | Matsuda | `Hom` は英字で残し，スペースなしで書く。 |
| endomorphism ring | 自己準同型環 | ユーザー採用 | Ring | \(\operatorname{End}\) の環。 |
| free module | 自由加群 | ユーザー採用 | Ring, Matsuda | 標準語。 |
| structure theorem for finitely generated modules over a PID | PID 上有限生成加群の構造定理 | ユーザー採用 | User | 自由部分，ねじれ部分，単因子を用いて説明する。 |
| free part / torsion part | 自由部分／ねじれ部分 | ユーザー採用 | User | PID/DVR 上の有限生成加群の構造定理で用いる。 |
| invariant factor | 単因子 | ユーザー採用 | User | PID/DVR 上の有限生成加群の構造定理の文脈でのみ用いる。「不変因子」は使わない。 |
| elementary divisor | elementary divisor | ユーザー採用 | User | 訳さず英語を保つ。必要なら定義を添える。 |
| basis | 基底 | ユーザー採用 | Ring, Matsuda | 加群・ベクトル空間の基底。位相の開基とは区別。 |
| generating system | 生成系 | ユーザー採用 | Matsuda | 文脈により「生成元の集合」。 |
| rank | 階数 | ユーザー採用 | Ring, Matsuda | 加群では必要なら「階数（加群）」。 |
| finite rank free module | 有限階数自由加群 | ユーザー採用 | Matsuda | 「有限ランク」は避ける。 |
| projective module | 射影加群 | ユーザー採用 | Ring, Matsuda | 標準語。 |
| projective object | 射影対象 | ユーザー採用 | Ring | 圏論文脈。 |
| projective resolution | 射影分解 | ユーザー採用 | Ring | 標準語。 |
| projective dimension | 射影次元 | ユーザー採用 | Ring | 標準語。 |
| injective module | 入射加群 | ユーザー採用 | Ring, Matsuda | 標準語。 |
| injective object | 入射対象 | ユーザー採用 | Ring | 圏論文脈。 |
| injective resolution | 入射分解 | ユーザー採用 | Ring | 標準語。 |
| injective dimension | 入射次元 | ユーザー採用 | Ring | 標準語。 |
| flat module | 平坦加群 | ユーザー採用 | Ring, Matsuda | 標準語。 |
| flat dimension | 平坦次元 | ユーザー採用 | Ring | 標準語。 |
| faithfully flat | 忠実平坦 | ユーザー採用 | Ring, Matsuda | `faithfully flat` の訳。 |
| exact sequence | 完全列 | ユーザー採用 | Ring, Matsuda | 標準語。 |
| short exact sequence | 短完全列 | ユーザー採用 | Matsuda | 標準語。 |
| split exact sequence | 分裂完全列 | ユーザー採用 | Ring | 標準語。 |
| snake lemma | 蛇の補題 | ユーザー採用 | Ring, Matsuda | 既存辞書にもあり。 |
| five lemma | 5項補題 | ユーザー採用 | Ring | アラビア数字で書く。 |
| Nakayama's lemma | 中山の補題 | ユーザー採用 | Matsuda, Ring | 人名は漢字。 |
| tensor product | テンソル積 | ユーザー採用 | Ring, Matsuda | 既存辞書の承認済みに一致。 |
| exterior algebra/product | 外積代数／外積 | ユーザー採用 | Ring | 文脈で「外積代数」。 |
| symmetric algebra/product | 対称代数／対称積 | ユーザー採用 | Ring | 必要時のみ。 |
| dual module | 双対加群 | ユーザー採用 | Ring, Matsuda | 既存の「双対」と整合。 |
| torsion element | ねじれ元 | ユーザー採用 | Matsuda | ひらがな候補。 |
| torsion module | ねじれ加群 | ユーザー採用 | Matsuda | 「捩れ」は使わない候補。 |
| torsion-free | torsion-free | ユーザー採用 | Matsuda | `torsion-free` だけは英語のまま書く。「ねじれがない」と訳さない。 |
| torsion submodule | ねじれ部分 | ユーザー採用 | Matsuda | 必要なら「ねじれ部分加群」。 |
| annihilator | annihilator | ユーザー採用 | Ring | 「零化イデアル」と訳さず英語を保つ。 |
| support | support | ユーザー採用 | Ring | 「台」と訳すと混同しやすいため，英語のまま書く。 |
| trace | トレース | ユーザー採用 | Matsuda | 「跡」は使わず「トレース」と書く。 |
| trace map | trace map／トレース写像 | ユーザー採用 | Matsuda | 英語を保つなら `trace map`，日本語にするなら「トレース写像」。「跡写像」は使わない。 |
| Tate's normalized trace map(s) | Tate's normalized trace map(s) | ユーザー採用 | FO | 「正規化トレース写像」と訳さず，英語の一続きの表現として扱う。FO Definition 1.100 と §4.3.2 では単数 `map`，§10.1.1 (TS2) で族を指す場合だけ複数 `maps`。 |
| determinant | 行列式 | ユーザー採用 | Matsuda | 標準語。 |

## C. 局所体・分岐・Galois 表現

| FO/英語表現 | 候補日本語 | 判定案 | 根拠 | 運用メモ |
|---|---|---|---|---|
| complete discrete valuation field | 完備離散付値体 | ユーザー採用 | Hattori | 局所体の基本語。 |
| ring of integers | 整数環 | ユーザー採用 | Hattori | 局所体の整数環。 |
| prime element | 素元 | ユーザー採用 | Hattori | uniformizer は既存辞書で原語維持。混同しない。 |
| ramification index | 分岐指数 | ユーザー採用 | Hattori | 標準語。 |
| residue degree | 剰余次数 | ユーザー採用 | Hattori, SS2009 | 局所体・代数体拡大。 |
| unramified | 不分岐 | ユーザー採用 | Hattori, SS2009 | 形容詞としても可。 |
| totally ramified | 完全分岐 | ユーザー採用 | Hattori | 標準語。 |
| inertia group | 惰性群 | ユーザー採用 | Hattori | 標準語。 |
| wild inertia group | 野性分岐群 | ユーザー採用 | Hattori | 「暴分岐群」ではなく「野性分岐群」。 |
| lower ramification group | 下付き分岐群 | ユーザー採用 | Hattori | 「第 \(i\) 下付き分岐群」の形も可。 |
| upper ramification group | 上付き分岐群 | ユーザー採用 | Hattori | 「第 \(u\) 上付き分岐群」の形も可。 |
| ramification filtration | ramification filtration | ユーザー採用 | Hattori | `filtration` は既存辞書通り英語維持。 |
| conductor | 導手 | ユーザー採用 | Hattori | 局所類体論や Galois 表現の文脈で使う。 |
| Artin conductor | Artin 導手 | ユーザー採用 | Hattori | 人名は英字，`conductor` は「導手」。 |
| Swan conductor | Swan 導手 | ユーザー採用 | Hattori | 人名は英字，`conductor` は「導手」。 |
| finite flat group scheme | 有限平坦群スキーム | ユーザー採用 | Hattori | `finite flat` は「有限平坦」。 |
| finite flat Galois representation | 有限平坦 Galois 表現 | ユーザー採用 | Hattori | `finite flat` はここでは「有限平坦」と訳す。 |
| Galois representation | Galois 表現 | ユーザー採用 | SS2009 | 「ガロア表現」とは書かない。 |
| \(p\)-adic representation | \(p\) 進表現 | ユーザー採用 | SS2009 | `p-adic` を文中で英語のまま混ぜない。 |
| \(\ell\)-adic representation | \(\ell\) 進表現 | ユーザー採用 | SS2009 | 標準語。 |
| integral \(\ell\)-adic representation | 整 \(\ell\) 進表現 | ユーザー採用 | SS2009 | lattice を含む文脈。 |
| mod \(\ell\) representation | 法 \(\ell\) 表現 | ユーザー採用 | SS2009 | 「mod \(\ell\) 表現」は避ける。 |
| cyclotomic character | 円分指標 | ユーザー採用 | SS2009 | 既存辞書に一致。 |
| Tate module | Tate 加群 | ユーザー採用 | SS2009 | 既存辞書の方針を維持。 |
| \(\ell\)-adic Tate module | \(\ell\) 進 Tate 加群 | ユーザー採用 | SS2009 | 既存辞書の「Tate 加群」を保つ。 |
| Tate twist | Tate twist | ユーザー採用 | SS2009 | 「Tate 捻り」と訳さず英語を保つ。 |
| Weil group | Weil 群 | ユーザー採用 | SS2009 | `group` は「群」と書く。 |
| Weil--Deligne group | Weil--Deligne 群 | ユーザー採用 | SS2009 | `group` は「群」と書く。 |
| Weil--Deligne representation | Weil--Deligne 表現 | ユーザー採用 | SS2009 | TeX では `Weil--Deligne`。 |
| Weil number | Weil 数 | ユーザー採用 | SS2009 | `number` は「数」と書く。 |
| monodromy theorem | monodromy theorem | ユーザー採用 | SS2009 | 「モノドロミー定理」と訳さず英語を保つ。 |
| monodromy operator | モノドロミー作用素 | ユーザー採用 | SS2009 | `operator` は「作用素」と書く。 |
| semisimplification | 半単純化 | ユーザー採用 | SS2009 | 表現の文脈。 |
| Frobenius semisimple | Frobenius 半単純 | ユーザー採用 | SS2009 | Frobenius は英字維持。 |
| compatible system | 整合系 | ユーザー採用 | SS2009 | Galois 表現の族の文脈で使う。 |
| strict compatible system | 厳整合系 | ユーザー採用 | SS2009 | 「厳密整合系」ではない。 |
| unramified representation | 不分岐表現 | ユーザー採用 | SS2009 | 既存辞書に一致。 |
| semistable representation | 半安定表現 | ユーザー採用 | SS2009 | 「semistable representation」と英語のままにしない。 |
| potentially semistable representation | 潜在的半安定表現 | ユーザー採用 | SS2009 | 「潜在的に半安定な表現」ではなくこの形。 |
| good reduction | good reduction | ユーザー採用 | SS2009 | 「良い還元」「良還元」と訳さず，FO の術語として英語を保つ。 |
| potentially good reduction | potentially good reduction | ユーザー採用 | SS2009 | `good reduction` と同じく英語を保つ。 |
| semistable reduction | semistable reduction | ユーザー採用 | SS2009 | 「半安定還元」と訳さず英語を保つ。 |
| strictly semistable | strictly semistable | ユーザー採用 | SS2009 | 「強半安定」と訳さず英語を保つ。 |
| étale cohomology | étale cohomology | ユーザー採用 | SS2009 | 英語のまま書き，`étale` のアクセントを付ける。 |
| Galois cohomology | Galois cohomology | ユーザー採用 | SS2009 | 「Galois コホモロジー」と混ぜない。 |
| cohomology class | コホモロジー類 | ユーザー採用 | SS2009 | `cohomology class` とは書かない。 |
| weight | 重さ | ユーザー採用 | SS2009 | `weight` 単独は「重さ」と書く。 |
| pure | pure | ユーザー採用 | SS2009 | Galois 表現周辺の術語として英語のまま書く。 |
| weight filtration | weight filtration | ユーザー採用 | SS2009 | 「重さ filtration」のように日本語と英語を混ぜず，英語のまま書く。 |
| lattice | 格子 | ユーザー採用 | SS2009 | 既存辞書の方針を維持し，Galois 表現周辺でも「格子」と書く。 |
| characteristic polynomial | 特性多項式 | ユーザー採用 | SS2009 | 英語のままにしない。 |
| proper smooth | 固有かつ滑らかな | ユーザー採用 | SS2009 | 既存辞書に一致。 |
| projective smooth variety | 射影的かつ滑らかな多様体 | ユーザー採用 | SS2009 | 既存辞書に一致。 |
| geometrically connected | 幾何的に連結 | ユーザー採用 | SS2009 | 「幾何的連結」は避ける。 |
| reciprocal root | 逆根 | ユーザー採用 | SS2009 | 触れる際は根の逆数であることを定義として述べる。 |
| underlying topological space | underlying topological space | ユーザー採用 | Ring | 英語を保つ。 |
| simple normal crossing | 単純正規交叉／simple normal crossing | ユーザー採用 | SS2009 | 文脈に応じて日本語または英語で書く。 |
| reciprocity map | 相互写像 | 既存維持候補 | SS2009 | 既存辞書に一致。 |

## D. 圏論・極限・基礎語

| FO/英語表現 | 候補日本語 | 判定案 | 根拠 | 運用メモ |
|---|---|---|---|---|
| category | 圏 | 既存維持候補 | Ring | 既存辞書に一致。 |
| functor | 関手 | ユーザー採用 | Ring | 標準語。 |
| natural transformation | 自然変換 | ユーザー採用 | Ring | 標準語。 |
| natural isomorphism | 自然同型／自然な同型 | 既存維持候補 | Ring | 既存辞書の文脈分けを維持。 |
| full functor | 充満関手 | ユーザー採用 | Ring | 「充満な関手」とは書かない。 |
| faithful functor | 忠実関手 | ユーザー採用 | Ring | 「忠実な関手」とは書かない。 |
| essentially surjective | 本質的全射 | 既存維持候補 | Ring | 既存辞書に一致。 |
| Yoneda lemma | 米田の補題 | ユーザー採用 | Ring | 人名は漢字。 |
| Yoneda embedding | 米田埋め込み | ユーザー採用 | Ring | 必要時のみ。 |
| directed set | 有向集合 | 既存維持候補 | Ring | 既存辞書に一致。 |
| inverse system | 逆系（射影系） | 既存維持候補 | Ring | 初出で別名併記。 |
| inverse limit | 逆極限（射影極限） | 既存維持候補 | Ring | 初出で別名併記。 |
| direct system | 順系 | ユーザー採用 | Ring, Matsuda | 既存の「順極限」と整合。 |
| direct limit | 順極限 | 既存維持候補 | Ring, Matsuda | 既存辞書に一致。 |
| inductive limit | 順極限 | 既存維持候補 | Ring | `帰納極限` は別名としてのみ候補。 |
| projective object | 射影対象 | ユーザー採用 | Ring | 加群論の「射影加群」と区別。 |
| injective object | 入射対象 | ユーザー採用 | Ring | 加群論の「入射加群」と区別。 |
| additive category | 加法圏 | 既存維持候補 | Ring | 既存辞書に一致。 |
| abelian category | アーベル圏 | 既存維持候補 | Ring | 既存辞書に一致。 |
| topological group | 位相群 | 既存維持候補 | Ring, SS2009 | 既存辞書に一致。 |
| open subgroup | 開部分群 | ユーザー採用 | SS2009 | profinite 群の文脈。 |
| closed subgroup | 閉部分群 | ユーザー採用 | SS2009 | profinite 群の文脈。 |
| Pontryagin dual | Pontryagin 双対 | ユーザー採用 | SS2009 | `Pontrjagin` 表記は採らない。 |

## E. 衝突・要判断

| 対象 | 候補 | 衝突・注意 | 暫定運用案 |
|---|---|---|---|
| Noetherian | Noether 環／Noether 加群 | Ring は `Noether`，AM-JP は「ネーター環」。ユーザー判断では `Noether`。 | `Noether 環／Noether 加群` と書く。 |
| profinite group | profinite 群／副有限群 | SS2009 には「副有限群」があるが，既存辞書は `profinite 群` 承認済み。 | 本文は `profinite 群` 維持。説明で「副有限」と併記するかはユーザー判断。 |
| totally disconnected | 完全不連結／全不連結 | SS2009 には「全不連結」があるが，既存辞書は「完全不連結」承認済み。 | 既存辞書通り「完全不連結」。 |
| Galois representation | Galois 表現／ガロア表現 | SS2009 では「ガロア表現」も多い。ユーザー判断では `Galois 表現`。 | `Galois 表現` と書く。 |
| Tate module | Tate 加群／Tate module／テート加群 | 日本語資料には「テート加群」もある。ユーザー判断では `Tate 加群`。 | `Tate 加群` と書く。 |
| Tate twist | Tate twist／Tate 捻り | ユーザー判断では英語維持。 | `Tate twist` と書く。 |
| monodromy theorem | monodromy theorem／モノドロミー定理 | ユーザー判断では英語維持。 | `monodromy theorem` と書く。 |
| good reduction | good reduction／良い還元／良還元 | SS2009 には「良還元」もあるが，ユーザー判断では英語維持。 | `good reduction` と書く。日本語訳は使わない。 |
| weight / pure / weight filtration | 重さ／pure／weight filtration | `weight` 単独は「重さ」，`pure` と `weight filtration` は英語維持。 | 「ウェイト」「純」「重さ filtration」は使わない。 |
| torsion-free | torsion-free／ねじれがない | ユーザー判断では `torsion-free` だけ英語維持。 | `torsion-free` と書く。torsion element などは日本語でよい。 |
| unit | 単元／単数 | 環論では「単元」，局所体・類体論では「単数群」が自然。 | 環の元は「単元」，局所体の \(\mathcal{O}_K^\times\) などは「単数群」。 |
| quotient ring | 剰余環／商環 | Matsuda, Ring は `A/I` に「剰余環」を使う。 | `A/I` は「剰余環」。一般の quotient object を直訳する必要がある場合だけ文脈判断。 |
| quotient module | 剰余加群／商加群 | Matsuda には両方ある。ユーザー判断では「剰余加群」。 | 本文では「剰余加群」。 |
| finite module | 有限生成加群／有限加群 | `finite` を直訳すると誤解しやすい。 | `finitely generated` は「有限生成」。`finite flat` は既存文献に合わせ「有限平坦」。 |
| ghost map | ghost map／幽霊写像 | Ring 索引には「幽霊写像」があるが，既存辞書・FO 方針では Witt 関連の ghost 系を安易に訳さない方針。 | 既存方針を維持し，採用しない候補。 |
| Teichmuller representation | Teichmuller 代表元／Teichmuller 表現 | Ring には「Teichmüller 表現」があるが，FO では map/representatives の区別がある。 | 既存辞書通り `Teichmuller 写像`，`Teichmuller 代表元` を維持。 |
| filtration | filtration／フィルトレーション | SS2009 や Ring には「フィルトレーション」系がある。ユーザー判断では英語維持。 | `filtration` と書く。「フィルトレーション」は使わない。 |
| direct limit | 順極限／帰納極限 | Ring には両方，Matsuda には順系・有向順極限がある。既存辞書は「順極限」承認済み。 | 「順極限」維持。初出で別名を併記する場合だけ「帰納極限」。 |
| inverse limit | 逆極限／射影極限 | Ring は両方。既存辞書は初出併記。 | 「逆極限（射影極限）」初出，後は「逆極限」。 |
| trace | トレース／trace map／跡 | Matsuda は「跡」「跡写像」。ユーザー判断では「跡」系を使わない。 | `trace` は「トレース」。写像名は `trace map` または「トレース写像」。 |
| Tate's normalized trace map(s) | Tate's normalized trace map(s)／正規化トレース写像 | ユーザー判断では英語維持。 | `Tate の normalized trace map` とせず英語一続きで書く。FO Definition 1.100 と §4.3.2 では単数 `map`，§10.1.1 (TS2) で族を指す場合だけ複数 `maps`。 |
| DVR | DVR／離散付値環／DVR（離散付値環） | ユーザー判断では略語を本文で使ってよいが，括弧併記はしない。 | 文脈に応じて `DVR` または「離散付値環」の一方を書く。 |
| support | support／台 | Ring には「台（サポート）」があるが，ユーザー判断では英語維持。 | `support` と書く。 |
| underlying topological space | underlying topological space／台位相空間 | ユーザー判断では英語維持。 | `underlying topological space` と書く。 |
| Pontryagin dual | Pontryagin 双対／Pontrjagin 双対 | SS2009 は `Pontryagin`，Ring 索引に `Pontrjagin` 表記が見える。ユーザー判断では `Pontryagin 双対`。 | 本文では `Pontryagin 双対` と書く。 |

## F. CFT2015 由来の類体論・イデール論候補

`sources/translation_me/2015_Class_Field_Theory.pdf` から抽出した候補。2026-07-01 にユーザー確認を受け，承認済み語として `TERM_DICTIONARY.md` へ反映済み。

| FO/英語表現 | 候補日本語 | 判定案 | 根拠 | 運用メモ |
|---|---|---|---|---|
| class field theory | 類体論 | ユーザー採用 | CFT2015 | 分野名。 |
| class field | 類体 | ユーザー採用 | CFT2015 | `class field corresponding to H` は「\(H\) に対応する類体」。 |
| class field construction / class field construction problem | 類体構成／類体構成問題 | ユーザー採用 | CFT2015 | 具体的な体の構成問題として使う場合。 |
| ideal class group | イデアル類群 | ユーザー採用 | CFT2015 | \(I_K/P_K\) など。 |
| ray class group | 射類群 | ユーザー採用 | CFT2015 | 初出で `ray class group` を併記するかは本文の必要に応じて判断。 |
| modulus | modulus | ユーザー採用 | CFT2015, User | 名詞としては英語のままにし，「整因子」は使わない。 |
| modulus \(m\) / modulo \(m\) | modulus \(m\)／\(m\) を法として | ユーザー採用 | CFT2015, User | 名詞としては `modulus` を保つ。合同条件の本文表現では「\(m\) を法として」。 |
| finite part / infinite part of a modulus | 有限部分／無限部分 | ユーザー採用 | CFT2015 | modulus \(\mathfrak m=\mathfrak m_0\mathfrak m_\infty\) の文脈。 |
| congruence subgroup | 合同群 | ユーザー採用 | CFT2015 | 類体論の `congruence subgroup`。 |
| fundamental inequality | 基本不等式 | ユーザー採用 | CFT2015 | 類体論の基本不等式。 |
| fundamental equality | 基本等式 | ユーザー採用 | CFT2015 | 類体論の基本等式。 |
| existence theorem | 存在定理 | ユーザー採用 | CFT2015 | 類体論の存在定理。 |
| general reciprocity law | 一般相互法則 | ユーザー採用 | CFT2015 | `reciprocity map` とは区別。 |
| reciprocity law | 相互法則 | ユーザー採用 | CFT2015 | 平方剰余の相互法則など。 |
| Artin symbol | Artin 記号 | ユーザー採用 | CFT2015 | CFT2015 は「アルティン記号」。既存辞書の人名英字方針に合わせて `Artin 記号`。 |
| Frobenius element / Frobenius at \(P\) | \(P\) の Frobenius 写像 | ユーザー採用 | CFT2015 | CFT2015 は「\(P\) のフロベニウス写像」。既存辞書の `Frobenius` 英字維持と整合。 |
| decomposition group | 分解群 | ユーザー採用 | CFT2015 | 既存辞書の `decomposition subgroup` と同じ運用。 |
| decomposition field | 分解体 | ユーザー採用 | CFT2015 | 分解群に対応する中間体。 |
| inertia group | 惰性群 | ユーザー採用 | CFT2015 | 既存辞書に一致。 |
| inertia field | 惰性体 | ユーザー採用 | CFT2015 | 惰性群に対応する中間体。 |
| place | 素点 | ユーザー採用 | CFT2015 | 有限素点・無限素点を含む語。 |
| finite place / infinite place | 有限素点／無限素点 | ユーザー採用 | CFT2015 | 代数体の素点の分類。 |
| real place / complex place | 実素点／複素素点 | ユーザー採用 | CFT2015 | 無限素点の分類。 |
| normalized valuation | 正規化された付値 | ユーザー採用 | CFT2015, User | `normalized trace map` とは別。 |
| product formula | 積公式／正規化された付値の積公式 | ユーザー採用 | CFT2015, User | 代数体の正規化された付値については「正規化された付値の積公式」。 |
| completion at \(v\) | \(v\) に関する完備化 | ユーザー採用 | CFT2015 | \(K_v\) の説明。 |
| local field | 局所体 | ユーザー採用 | CFT2015 | 既存辞書にも局所体周辺語あり。 |
| global field | 大域体 | ユーザー採用 | CFT2015 | FO 本文で使う必要があれば候補。 |
| idèle / idele | イデール | ユーザー採用 | CFT2015 | 長音表記。`idele` は本文では `イデール`。 |
| idèle group / idele group | イデール群 | ユーザー採用 | CFT2015 | \(J_K\) など。 |
| idèle class group / idele class group | イデール類群 | ユーザー採用 | CFT2015 | \(C_K=J_K/K^\times\)。 |
| restricted direct product | 制限直積 | ユーザー採用 | CFT2015 | イデール群の定義で使用。 |
| \(S\)-idèle | \(S\) イデール | ユーザー採用 | CFT2015 | TeX では `\(S\) イデール` 候補。英語表現を残す場合だけ `\(S\)-idèle`。 |
| principal idèle | 主イデール | ユーザー採用 | CFT2015 | \(K^\times\) の元をイデールとみなす文脈。 |
| idèle norm map | イデールのノルム写像 | ユーザー採用 | CFT2015 | \(J_L\to J_K\)。 |
| norm map on idèle class groups | イデール類群のノルム写像 | ユーザー採用 | CFT2015 | \(C_L\to C_K\)。 |
| norm residue map | ノルム剰余写像 | ユーザー採用 | CFT2015 | \((*,L/K)\colon J_K\to\operatorname{Gal}(L/K)\)。 |
| norm residue symbol | ノルム剰余記号 | ユーザー採用 | CFT2015 | 節名では「ノルム剰余記号」。写像としては「ノルム剰余写像」。 |
| local norm residue symbol | 局所ノルム剰余記号 | ユーザー採用 | CFT2015 | 局所化した \((*,L_w/K_v)\)。 |
| fractional ideal | 分数イデアル | ユーザー採用 | CFT2015 | 可換環論辞書には未収録。 |
| integral ideal | 整イデアル | ユーザー採用 | CFT2015 | 整数環のイデアル。 |
| principal fractional ideal | 単項分数イデアル | ユーザー採用 | CFT2015 | \(S_\mathfrak m\) の定義周辺。 |
| ideal norm | イデアルノルム | ユーザー採用 | CFT2015 | \(N_K\mathfrak a\) など。単に「ノルム」とする文脈もある。 |
| relative discriminant | 相対判別式 | ユーザー採用 | CFT2015 | \(d_{L/K}\) など。 |
| splitting law / decomposition law | 分解法則 | ユーザー採用 | CFT2015 | 素イデアルの分解を述べる文脈。 |
| completely split / split completely | 完全分解 | ユーザー採用 | CFT2015 | 素イデアルが拡大で完全に分解すること。 |
| finite abelian extension | 有限次アーベル拡大 | ユーザー採用 | CFT2015 | `abelian` はカタカナ運用。 |
| cyclic extension | 巡回拡大 | ユーザー採用 | CFT2015 | 標準語候補。 |
| maximal abelian extension | 最大アーベル拡大 | ユーザー採用 | CFT2015 | \(K^{ab}\)。 |
| Herbrand quotient | Herbrand 商 | ユーザー採用 | CFT2015 | CFT2015 は「エルブラン商」。既存の人名英字方針に合わせるなら `Herbrand 商` が候補。 |
| Kummer theory | Kummer 理論 | ユーザー採用 | CFT2015 | CFT2015 は「クンマー理論」。既存の人名英字方針に合わせるなら `Kummer 理論` が候補。 |
| Chebotarev density theorem | Chebotarev の密度定理 | ユーザー採用 | CFT2015 | CFT2015 は「チェボタレフの密度定理」。人名英字方針に合わせる。 |
| Dirichlet unit theorem | Dirichlet の単数定理 | ユーザー採用 | CFT2015 | CFT2015 は「ディリクレの単数定理」。人名英字方針に合わせる。 |
| Dirichlet theorem on primes | Dirichlet の素数定理 | ユーザー採用 | CFT2015 | CFT2015 は「ディリクレの素数定理」。 |
| approximation theorem | 近似定理 | ユーザー採用 | CFT2015 | 代数体の素点に関する近似定理。 |
| density | 密度 | ユーザー採用 | CFT2015 | 素イデアル集合の密度。 |
| almost all prime ideals | ほとんど全ての素イデアル | ユーザー採用 | CFT2015 | 密度 \(0\) の例外を除く意味。 |
| quadratic residue symbol | 平方剰余記号 | ユーザー採用 | CFT2015 | 章名・本文にあり。 |
| quadratic reciprocity law | 平方剰余の相互法則 | ユーザー採用 | CFT2015 | 「平方剰余相互法則」と詰めない。 |
| supplementary law | 補充法則 | ユーザー採用 | CFT2015 | 「第二補充法則」など。 |
| cyclotomic field | 円分体 | ユーザー採用 | CFT2015 | 既存の「円分指標」と整合。 |
| quadratic field | 二次体 | ユーザー採用 | CFT2015 | 代数体の基本例。 |

## G. CFT2015 追加候補（代数体・付値・局所体基礎）

`sources/translation_me/2015_Class_Field_Theory.pdf` の前半から抽出した追加候補。2026-07-01 にユーザー確認を受け，承認済み語として `TERM_DICTIONARY.md` へ反映済み。

| FO/英語表現 | 候補日本語 | 判定案 | 根拠 | 運用メモ |
|---|---|---|---|---|
| number field / algebraic number field | 代数体／数体 | ユーザー採用 | CFT2015, User | 文脈に応じて「代数体」「数体」のどちらも可。 |
| algebraic number | 代数的数 | ユーザー採用 | CFT2015 | `algebraic integer` は既存辞書で「代数的整数」。 |
| finite field | 有限体 | ユーザー採用 | CFT2015 | 標準語候補。 |
| field extension | 体拡大／体の拡大 | ユーザー採用 | CFT2015, User | 文脈に応じて「体拡大」「体の拡大」のどちらも可。 |
| separable extension | 分離拡大 | ユーザー採用 | CFT2015 | 既存辞書の「有限次分離拡大」と整合。 |
| Galois extension | Galois 拡大 | ユーザー採用 | CFT2015 | 既存の `Galois 表現` 方針に合わせて人名は英字。 |
| Galois group | Galois 群 | ユーザー採用 | CFT2015 | 「ガロア群」とは書かない。 |
| field automorphism | 自己同型写像／体自己同型 | ユーザー採用 | CFT2015 | CFT2015 は「自己同型写像」。FO 本文では文脈に応じて「体自己同型」も可。 |
| conjugate embedding / conjugate field / conjugate element | 共役写像／共役体／共役元 | ユーザー採用 | CFT2015 | 体の埋め込み・元の共役の文脈。 |
| real embedding / complex embedding | 実埋め込み／複素埋め込み | ユーザー採用 | CFT2015 | 無限素点の説明で使用。 |
| complex conjugation | 複素共役写像 | ユーザー採用 | CFT2015 | 自己同型としての複素共役。 |
| integral basis | 整基底 | ユーザー採用 | CFT2015, User | 整数環の \(\mathbb Z\)-基底。「整数基」とは書かない。 |
| discriminant | 判別式 | ユーザー採用 | CFT2015 | `relative discriminant` は既に「相対判別式」。 |
| roots of unity | \(1\) の冪根 | ユーザー採用 | CFT2015 | \(\mu_K\), \(\mu_n\) の説明。 |
| unit of a number field | 単数 | ユーザー採用 | CFT2015 | 環論の `unit` は既存辞書で「単元」。代数体・局所体では区別する。 |
| unit group of a number/local field | 単数群 | ユーザー採用 | CFT2015 | 代数体・局所体の単数群。 |
| fundamental system of units | 基本単数系 | ユーザー採用 | CFT2015 | Dirichlet の単数定理の文脈。 |
| class number | 類数 | ユーザー採用 | CFT2015 | イデアル類群の位数。 |
| prime ideal factorization / decomposition | 素イデアル分解 | ユーザー採用 | CFT2015 | 整イデアル・分数イデアルの分解。 |
| prime above \(p\) | \(p\) の上にある素イデアル | ユーザー採用 | CFT2015 | \(P\mid p\) の本文表現。 |
| extension of an ideal | イデアルの延長 | ユーザー採用 | CFT2015 | \(a\mathcal O_L\) の説明。 |
| relative norm of ideals | 相対ノルム | ユーザー採用 | CFT2015 | イデアルの \(N_{L/K}\)。 |
| relative degree \(f_{P\mid p}\) | 相対次数 | ユーザー採用 | CFT2015 | `residue degree` と同じ数を，CFT2015 の表現に合わせて「相対次数」と呼ぶ文脈を許容する。 |
| ramified prime | 分岐する素イデアル | ユーザー採用 | CFT2015 | 形容詞としては「\(p\) が分岐する」。 |
| unramified extension | 不分岐拡大 | ユーザー採用 | CFT2015 | 既存辞書の `unramified` と整合。 |
| totally ramified extension | 完全分岐拡大 | ユーザー採用 | CFT2015 | 既存辞書の `totally ramified` と整合。 |
| different / different ideal | 共役差積 | ユーザー採用 | CFT2015 | CFT2015 用語。 |
| non-archimedean valuation | 非アルキメデス付値 | ユーザー採用 | CFT2015, User | 2026-07-01 の追加判断で，`Archimedes` 英字ではなくカタカナ表記へ変更。 |
| archimedean valuation | アルキメデス付値 | ユーザー採用 | CFT2015, User | `non-archimedean valuation` と対にする。 |
| \(p\)-adic valuation | \(p\) 進付値 | ユーザー採用 | CFT2015 | ハイフンなしの既存方針に合わせる。 |

## H. CFT2015 追加候補（局所体・位相・証明道具）

`sources/translation_me/2015_Class_Field_Theory.pdf` の局所体，イデール位相，類体論の証明周辺から抽出した候補。2026-07-01 にユーザー確認を受け，承認済み語として `TERM_DICTIONARY.md` へ反映済み。

| FO/英語表現 | 候補日本語 | 判定案 | 根拠 | 運用メモ |
|---|---|---|---|---|
| valued field / valuation field | 付値体 | ユーザー採用 | CFT2015, User | 付値 \(v\) を備えた体。 |
| valuation ideal | 付値イデアル | ユーザー採用 | CFT2015, User | 付値環の極大イデアル \(P\)。 |
| \(P\)-adic order / \(\operatorname{ord}_P\) | \(P\) での位数 | ユーザー採用 | CFT2015, User | \(P\) に関する加法的付値。 |
| complete field | 完備体 | ユーザー採用 | CFT2015, User | 付値・距離に関して完備な体。 |
| Cauchy sequence | Cauchy列 | ユーザー採用 | CFT2015, User | 「コーシー列」とは書かない。 |
| extension of a valuation | 付値の延長 | ユーザー採用 | CFT2015, User | 体拡大で付値を延長する文脈。 |
| complete residue system | 完全代表系 | ユーザー採用 | CFT2015, User | 剰余環の代表元集合。 |
| Hensel's lemma | Hensel の補題 | ユーザー採用 | CFT2015, User | 「Hensel の補題（単純根版）」と限定しない。 |
| Krasner's lemma | Krasner の補題 | ユーザー採用 | CFT2015, User | CFT2015 は「クラスナーの補題」。人名英字方針に合わせる。 |
| Laurent series field | Laurent級数体 | ユーザー採用 | CFT2015, User | 「ローラン級数体」とは書かない。 |
| \(p\)-adic number field | \(p\) 進数体 | ユーザー採用 | CFT2015, User | \(\mathbb Q_p\) の説明など。 |
| \(p\)-adic integer ring | \(p\) 進整数環 | ユーザー採用 | CFT2015, User | \(\mathbb Z_p\) の説明など。 |
| relative local field | 相対局所体 | ユーザー採用 | CFT2015, User | 有限次拡大 \(L/K\) が局所体になる文脈。 |
| separable closure | 分離閉包 | ユーザー採用 | CFT2015, User | \(K_s\) など。 |
| algebraic closure | 代数閉包 | ユーザー採用 | CFT2015, User | 体の代数閉包。 |
| compositum | 合成体 | ユーザー採用 | CFT2015, User | 体の合成体 \(LK_v\), \(L_1L_2\) など。 |
| finite unramified extension | 有限次不分岐拡大 | ユーザー採用 | CFT2015, User | 体の拡大では「有限次」を保つ。 |
| maximal unramified extension / \(K^{ur}\) | 最大不分岐拡大 | ユーザー採用 | CFT2015, User | CFT2015 は有限次不分岐拡大全体の合成体として \(K^{ur}\) を定義。 |
| \(q\)-power Frobenius | \(q\) 乗 Frobenius 写像 | ユーザー採用 | CFT2015, User | 既存の `Frobenius` 英字維持と整合。 |
| basic system of neighborhoods | 基本近傍系 | ユーザー採用 | CFT2015, User | 位相群・イデール群の単位元近傍で使用。 |
| locally compact | 局所コンパクト | ユーザー採用 | CFT2015, User | 位相群・局所体・イデール群で使用。 |
| Hausdorff space | Hausdorff 空間 | ユーザー採用 | CFT2015, User | CFT2015 は「ハウスドルフ空間」。人名英字方針に合わせる。 |
| quotient topology | 商位相 | ユーザー採用 | CFT2015, User | 剰余群・商群に入れる位相。 |
| connected component | 連結成分 | ユーザー採用 | CFT2015, User | イデール類群の連結成分。 |
| idèle volume / volume map | イデールの体積／体積写像 | ユーザー採用 | CFT2015, User | \(V\colon J_K,C_K\to\mathbb R_{>0}\)。 |
| \(S\)-unit | \(S\)-単数 | ユーザー採用 | CFT2015, User | `\(S\)-` はハイフンを入れる。 |
| profinite completion of \(\mathbb Z\) | \(\mathbb Z\) の profinite completion | ユーザー採用 | CFT2015, User | \(\widehat{\mathbb Z}\) の説明。`profinite` は既存方針で英語維持。 |
| Hilbert theorem 90 / Hilbert 90 | Hilbert 90 | ユーザー採用 | CFT2015, User | CFT2015 は「ヒルベルト 90」。人名英字方針に合わせる。 |
| \(G\)-exact sequence | \(G\)-完全列 | ユーザー採用 | CFT2015, User | `\(G\)-` はハイフンを入れる。 |
| \(L\)-function | \(L\) 関数 | ユーザー採用 | CFT2015, User | `\(L\)` の後にハイフンは入れない。 |

## I. 本文監査由来の追加確認候補（可換環論・代数的整数論）

`final/` の本文検索で実際に現れた表現から，証明中で急に不自然に見えやすいものを切り出した候補。2026-07-01 にユーザー確認を受け，採用分は `TERM_DICTIONARY.md` へ反映済み。ただし `inverse different` は辞書化しない扱い。

| No. | 対象 | 現状の本文表現 | 確認したい候補 | 判定案 | 運用メモ |
|---:|---|---|---|---|---|
| 1 | non-archimedean field | 完備非アルキメデス体 | 非アルキメデス体 | ユーザー採用 | `Archimedes` 英字ではなくカタカナ表記を使う。 |
| 2 | non-archimedean property | 非アルキメデス性 | 非アルキメデス性／非アルキメデス三角不等式 | ユーザー採用 | 付値・絶対値の性質を指す表現。 |
| 3 | non-archimedean absolute value | 非アルキメデス絶対値 | 非アルキメデス絶対値 | ユーザー採用 | 付値だけでなく絶対値でもカタカナ表記を使う。 |
| 4 | different / different ideal | different | 共役差積 | ユーザー採用 | CFT2015 由来で既に承認済み。本文の `different` は文脈確認のうえ「共役差積」へ寄せる。 |
| 5 | inverse different | inverse different | 辞書化しない | 辞書案件外 | 分数イデアルとしての逆元を表す文脈なので，固定訳語ではなく周囲の式で意味を示す。 |
| 6 | discriminant | discriminant | 判別式 | ユーザー採用 | 辞書では「判別式」承認済み。章題や説明文の英語表記を残すかだけ別途本文で判断。 |
| 7 | base change | 基礎変換／基底変換 | 基底変換 | ユーザー採用 | 体・環・表現の基底を替える操作は「基底変換」に統一。「基礎変換」は避ける。 |
| 8 | extension of scalars / scalar extension | 係数拡大 | 係数拡大 | ユーザー採用 | 表現や加群で係数環を広げる操作。`base change` と混ぜない。 |
| 9 | base extension of a representation | 基底拡大 | 係数拡大 | ユーザー採用 | `L\otimes V` を `E^s\otimes V` にする箇所は，表現の「係数拡大」として扱う。 |
| 10 | linearly disjoint | 線形分離 | linearly disjoint | ユーザー採用 | 「線形無関連」という訳語はあるが，本文では英語のまま置く。 |
| 11 | radical closure | radical closure | radical closure | ユーザー採用 | 日本語訳を作らず英語のまま置く。必要なら初出で説明する。 |
| 12 | perfect closure | perfect closure | perfect closure | ユーザー採用 | 日本語訳を作らず英語のまま置く。 |
| 13 | purely inseparable extension | 純非分離拡大 | 純非分離拡大 | ユーザー採用 | radical/perfect closure の説明で使う。 |
| 14 | Eisenstein polynomial | Eisenstein 多項式 | Eisenstein 多項式 | ユーザー採用 | 人名は英字維持，`polynomial` は「多項式」。 |
| 15 | minimal polynomial | 最小多項式 | 最小多項式 | ユーザー採用 | 体拡大・整性の証明で頻出するため辞書化候補。 |
| 16 | monic polynomial | monic 多項式 | モニック多項式／モニックな多項式 | ユーザー採用 | 既存辞書では `monic` は「モニック」。本文の `monic 多項式` は直す。 |
| 17 | kernel / cokernel in prose | kernel と cokernel | 核と余核 | ユーザー採用 | 既存辞書では `kernel` は「核」，`cokernel` は「余核」。証明本文では日本語に寄せる。 |
| 18 | take the kernel | kernel を取る左完全性 | 左完全性により核に移る／核に関する左完全性 | ユーザー採用 | 「kernel を取る」「核を取る」は機械置換せず文ごとに直す。 |
| 19 | take inverse limits | 逆極限を取る／逆極限に通す | 構成は「逆極限を取る」，完全性・同型性は「逆極限に通す」 | ユーザー採用 | 証明中の動詞を整理するための文体ルール。 |
| 20 | tensor with \([1/p]\) | \([1/p]\) でテンソルして...へ移す | \([1/p]\) でテンソルして...へ移す | ユーザー採用 | 「\(p\) を逆にする」だけで済ませず，係数・方向を明示する既存方針。 |
| 21 | \(p\)-adic completion | \(p\) 進完備化 | \(p\) 進完備化 | ユーザー採用 | ハイフンなしの既存方針と整合。 |
| 22 | \(p\)-adic / Lie filtration | filtration theorem／Lie filtration | filtration theorem／Lie filtration | ユーザー採用 | `filtration` は英語維持。日本語を混ぜた「重さ filtration」型は避ける。 |
| 23 | \(p\)-adic Lie extension | \(p\)-adic Lie extension | \(p\)-adic Lie extension | ユーザー採用 | Galois 表現・Lie 周辺は英語優先。 |
| 24 | closed subfield | 閉部分体 | 閉部分体 | ユーザー採用 | 位相体の閉部分体。 |
| 25 | separably closed field / separably closed | 分離閉 | 分離閉／分離閉体 | ユーザー採用 | `separable closure` は「分離閉包」承認済み。形容詞としての使い方も固定する。 |
| 26 | algebraically closed field | 代数閉体 | 代数閉体 | ユーザー採用 | `algebraic closure` は「代数閉包」承認済み。 |
| 27 | complete non-archimedean field | 完備非アルキメデス体 | 完備非アルキメデス体 | ユーザー採用 | No.1 の複合語。章冒頭で頻出するため表記を固定する。 |
| 28 | finite totally ramified extension | 有限次完全分岐拡大 | 有限次完全分岐拡大 | ユーザー採用 | `totally ramified extension` は「完全分岐拡大」承認済み。 |
| 29 | finite unramified extension | 有限次不分岐拡大 | 有限次不分岐拡大 | ユーザー採用 | CFT2015 由来で承認済み。 |
| 30 | completion of a union/compositum | 合併と完備化を取る | 合併を取り，さらに完備化する | ユーザー採用 | 「完備化を取る」が続く箇所の文体整理。用語というより証明文の自然さ確認。 |

## 次に採否を決めたい語

優先してユーザー判断を取りたい語:

1. `profinite 群` を維持しつつ，「副有限群」を併記可能にするか。
2. `trace map` と「トレース写像」の文脈分けをどうするか。
