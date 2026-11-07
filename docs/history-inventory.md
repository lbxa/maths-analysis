# Historical context inventory

Scope: the current Analysis I manuscript, its named methods and examples,
and the relevant shared exercises. Analysis II has no supplied mathematics.
This is an inventory of this repository, **not all named mathematics**.
The author approved all current passages and captions on 6 November 2026,
including historical notes and portraits. Future additions use the shared
pending-review style until approved. Mathematical omissions and source
limitations remain explicitly recorded.

The editorial aim is a short note at the substantive treatment: the problem
being addressed, date, formulation decisions, peers or predecessors, and
mathematical impact. Eponyms alone do not establish discovery or sole
ownership. General limit laws and elementary inequalities can have a long
collective development; they are inventoried below without invented authors.

Citations use the shared alphabetic AMS style from `main`, with Biber-generated
bracketed author/year labels and author/year/title sorting. The book and
Homework 03 use `\printbibliography` with the same bundled styles. Historical
sources keep dates, journal names, locations, identifiers, and links in their
dedicated BibLaTeX fields; contextual notes distinguish composition, publication,
and later digitisation.

## Topic and attribution map

| Location | Subject | Evidence / historical source | Decision and coverage |
| --- | --- | --- | --- |
| 1.1 | De Morgan laws; cardinality and countability | De Morgan 1847; Cantor 1874/1891 | New De Morgan note; cardinality context in §1.3. |
| 1.2 | Euclid's lemma | Euclid, Elements VII.30 | Previously approved historical note retained. |
| 1.2 / 1.6 | Dedekind cuts; supremum and completeness | Dedekind 1872, preface and §§3–5 | New teaching motivation (1858), publication (1872), and peer context. |
| 1.3 | Cantor power-set theorem | Cantor 1874 and 1891 | New note separates early uncountability from later diagonal proof. |
| 1.3 | Cantor–Bernstein; Schröder; Dedekind | MacTutor Bernstein; Sieg 2019 | Existing naming note condensed. Historical synthesis remains secondary; original proofs should be added in a subsequent source pass. |
| 1.3 | Middle-thirds set; Smith precursor | Cantor 1883; Smith 1875 | Existing note retained; Smith primary paper added. Smith publisher metadata says 1874, but printed paper is dated/read in 1875. |
| 1.3 / 1.12 | Algebraic/transcendental numbers; continuum | Cantor letter to Dedekind, 7 December 1873; Cantor 1874 | New correspondence note; no claim of a jointly authored theorem. |
| 1.4 | Newton–Raphson method; Simpson formulation | Newton 1669; Raphson 1690; Simpson 1740; Kollerstrom 1992 | New attribution note. “Newton–Russell” in the request is interpreted as Newton–Raphson; Bertrand Russell is not credited with this method. |
| 1.4 / 4.2 | Euler evaluation / Basel problem | Euler E41, written 1735, printed 1740 | New note at first substantive statement, including sine product motivation and zeta impact. |
| 1.6 / 1.8 | Archimedean property | Archimedes, Sphere and Cylinder I, assumptions; Heath translation | New note separates ancient magnitudes from modern ordered fields. |
| 1.7 / 3.2 | Completeness equivalences; monotone convergence | Dedekind 1872; modern course proof chain | Covered by foundational context, without assigning the modern six-way equivalence to one inventor. |
| 1.11 | Fibonacci recurrence and ratios | Liber abaci, facsimile pages; 1202 / revised 1228 | New rabbit-problem and practical-arithmetic context. No claim of first discovery across cultures. |
| 2.1 | Metric spaces | Fréchet 1906 | New historical introduction; mathematical course statement remains reserved. |
| 2.2–2.4 | Compactness; Heine–Borel | Heine 1872; Borel 1895 | New finite-cover context; modern Euclidean formulation distinguished from arbitrary metric spaces. |
| 3.1 | Bernoulli inequality / geometric estimates | Jakob Bernoulli 1689 | New note distinguishes Jakob from Johann; no priority over earlier geometers asserted. |
| 3.2 | Arithmetic–geometric mean | Cauchy 1821, Note II | New note cites a general proof, not the first discovery of the two-variable inequality. |
| 3.3 | Bolzano–Weierstrass | Bolzano 1817; later Weierstrass tradition | New motivation and compactness impact; modern sequence statement distinguished from earlier formulations. |
| 3.5 / 4.1 / 8.4 | Cauchy sequences and series criteria | Cauchy 1821, chapter VI | New note at §3.5; repeated criteria do not receive duplicate biographies. |
| 4.1 | Harmonic, geometric, and alternating series | Cauchy 1821; Bernoulli 1689 | Examples connected to convergence history; no unsupported individual priority claim. |
| 4.2 | Ratio and root tests; power-series estimates | Cauchy 1821, chapter VI | New note distinguishes classical estimates from present limsup formulations. |
| 4.3 | Dirichlet test | Dirichlet 1829 | New cancellation/Fourier motivation; general test statement still reserved. |
| 4.4 | Conditional convergence; rearrangement | Riemann 1854 / published 1867, §3 | New note on order of summation and posthumous publication. |
| 4.4 | Cauchy product | Cauchy 1821, chapter VI | Reviewed multiplication theorem and proof, with the absolute-value hypothesis explicit; no assertion that Cauchy discovered every form of the convolution operation. |
| 5.1 | Continuity and function limits | Cauchy 1821; Heine 1872 | New note on formulation; no sole-inventor claim for the modern epsilon–delta definition. |
| 5.1 | Dirichlet function | Dirichlet 1829 | New function-concept and dense-set context. |
| 5.1 | Thomae function | Thomae 1875 | New discontinuity/integrability context. |
| 5.2 | Extreme value theorem | Completeness and compactness context in §§1.6, 3.3, 5.4 | No separately verified priority date added; existing mathematics retained. |
| 5.3 | Intermediate value theorem | Bolzano 1817 | New arithmetic-proof motivation and root-finding impact. |
| 5.3 / 6.6 | Continuous inverse; inverse function theorem | Modern course statements / reserved differentiation material | Do not conflate continuity of a monotone inverse with the differentiable inverse function theorem. No invented sole attribution. |
| 5.4 | Uniform continuity; Heine–Cantor | Heine 1872 | New common-delta / compactness context; paired name not called a joint paper. |
| 5.4 | Lipschitz continuity | Lipschitz 1864 | New quantitative-regularity and differential-equation context before the shared exercise. |
| 6.1 / 7.5 | Differentiation; Newton and Leibniz; fundamental theorem | Newton's Waste Book, 20 May 1665, fol. 47r; Newton 1669; Leibniz 1684 | Tangents/areas/motion context, plus a primary notebook example of expansion, cancellation, and a vanishing increment; modern quotient-limit notation is not attributed to Newton. |
| 6.2 | Rolle and mean value theorems | Rolle 1691; Cauchy 1823 | LEC06 supplies the statements and the ordinary MVT proof. Added context distinguishes Rolle's polynomial-equation text from modern differentiable formulations; no sole-discovery claim. E-rara digitisation and catalogues establish editions, not a complete priority history. The source leaves the extended proof unfinished; the author's later request supplies an editorial proof using Rolle's theorem, approved on 6 November 2026. |
| 6.3 | Taylor expansion; Lagrange remainder | Taylor 1715; Lagrange 1797 | New expansion versus finite error-bound distinction. |
| 6.4 | Convexity and Jensen's inequality | Jensen 1906, pp. 175--193 | Primary text links convexity to Cauchy's inequalities between means. The supplied integral proof uses tangent support with explicit smoothness and integration assumptions. |
| 6.4 | Young's inequality | Standard name in supplied IMG_9423 | Mathematical proof from exp convexity supplied. No verified original Young passage or priority date is asserted. |
| 6.5 | L'Hôpital rule; Johann Bernoulli retainer | L'Hôpital letter of 17 March 1694; Analyse 1696, preface and §IX art.163; Truesdell 1958 | Two notes approved on 6 November 2026. Use French livres, not modern British pounds; exclusive research communication, not a modern copyright-licensing claim. Financial need is identified as interpretation. |
| 7.1 / 7.3 / 7.4 | Riemann integral, sums, criterion | Riemann, 1854 Habilitationsschrift, printed 1867, §§4–6 | New Fourier/integrability motivation, with Dedekind's posthumous editorial role. |
| 7.2 | Upper/lower sums; Darboux integral | Darboux 1875 | New oscillation and upper/lower-bound context. |
| 8.1 / 8.3 / 8.5 | Pointwise/uniform convergence; continuity and integration | Cauchy 1821 and 1853 | New note explains the sum-theorem issue. It does not award the whole development to one mathematician. |
| 8.4 | Weierstrass majorant test | Cauchy 1853 supplies the earlier uniform-convergence problem, not a primary source for priority of the M-test | Modern majorant theorem and elementary proof added. Historical context links back to §8.3; no first-discovery date is assigned without verified primary evidence. |
| 8.6 | Power series and convergence radius | Earlier Cauchy root/ratio context in §4.2 | No duplicate biography and no attribution of the present course proof to a single inventor. |
| 8.6 | Analytic functions and multiplicity | Supplied IMG_9425 and modern power-series terminology | No sole-inventor claim. Distinguish convergent local series, Taylor remainder control, and a nonzero leading coefficient. |
| 8.6 | Weierstrass approximation and Bernstein polynomials | Bernstein 1912, Kharkov 13(1):1--2 | Reviewed constructive proof supplied in IMG_9426--IMG_9428. Explain binomial averaging and distinguish Sergei Bernstein from Felix Bernstein. |
| 9.1 / 9.2 | Fourier series; convergence | Fourier 1822; Dirichlet 1829; Riemann 1854/1867 | New heat-conduction motivation and the distinction between representation and convergence. |

## Evidence boundaries

Jensen's original 1906 paper was read through the CMU-hosted reproduction.
Its opening explicitly identifies Cauchy's arithmetic--geometric mean proof
as motivation. The modern all-weight definition in this book is distinguished
from the paper's initial midpoint formulation. Bernstein's publication title,
year, journal, and pages were checked against Math-Net's primary-paper record.
Its PDF link redirected to the catalogue, so no direct original-page inspection
is claimed. The mathematics was supplied in the handwritten pages and the
probability interpretation follows directly from the binomial weights.
The source's standard Young attribution is retained without an unsupported
biography or date. None of these notes claims a complete priority history.

The supplied Harvard page reproduces part of **Truesdell's 1958 review**,
which quotes and interprets the correspondence. It is not itself the 1694
letter. The bibliography separately records the Basel letter edition and
the 1696 textbook. The public letter viewer exposed catalogue metadata;
its full diplomatic text was not readable through the text-fetch tool.
The retainer wording is supported by the quotation in Truesdell, not by a
claim that an unread original was inspected. Avoid stronger claims that all
of L'Hôpital's mathematics was purchased, or that financial necessity is
proved by a contract clause.

The detailed Cantor–Bernstein naming chronology still relies on the existing
historical sources (MacTutor and Sieg). Cantor's 1874 paper, his 1891 diagonal
paper, the 1883 point-set paper, and his December 1873 letter are separately
cited primary material. The naming note is a synthesis, not an assertion
that these four originals contain every later attribution detail.

The Cauchy-product attribution was checked against chapter VI of the 1821
primary text, including its absolute-value convergence hypothesis, through
the Wikisource transcription of the published work. The bibliography
retains the ETH digitisation. The M-test's current name is used without
dating its discovery. A search located later historical discussions and
catalogues of Weierstrass's collected papers, but these were not substituted
for a verified original passage or used to make a priority claim.

The Newton notebook note quotes the Newton Project's normalized transcription
of MS Add. 4004, folio 47r. Its editorial note 101 supplies the entry date,
20 May 1665; the catalogue dates the whole Part 2 much more broadly,
c. 1664–c. 1685. The diplomatic view marks damaged letters in the phrase
rendered as “vanisheth into nothing” in the normalized edition. Both views
show the expansion and cancellation preceding that step. Cambridge's
manuscript-image viewer returned HTTP 403, so no facsimile inspection or
reproduction is claimed. The modern parabola diagram is an editorial
illustration, not a reconstruction of Newton's own drawing or notation.

The 27 portraits have institutional image-source citations, exact acquisition
URLs, hashes, and a separate reproduction licence. Original maker, date, and
physical-object provenance are **not fully established for every image**.
See the [portrait ledger](../figures/portraits/README.md), including conflicting
L'Hôpital catalogue metadata and the absence of verified contemporary
likenesses for the ancient/medieval figures. The image-source citations must
not be described as complete museum-object provenance.

Reserved mathematics has not been invented to accompany a historical note.
Nine unrelated template specimens at historical topic openings were replaced
by short pending introductions. On 2026-10-28, the remaining sample tables in
§§2.2–2.3 received inline captions and the sample prose in §6.2 was constrained
to the main column, clearing the enlarged portraits. Other unfilled syllabus
sections retain their status. No theorem hypotheses, proofs, exercise order, or solution identity
were changed by the historical annotations.

## Formal statement inventory

Every substantive `theorem`, `lemma`, `proposition`, `corollary`, `definition`,
and `property` block in the Analysis I topic files is listed below. Template
specimens are excluded. An unnamed entry does not imply an unknown theorem
has been assigned a historical discoverer. Topic-level notes can cover several
related statements; the map above identifies the corresponding context.

Count: **103 formal blocks**. Source line numbers refer to the current text.

| Topic source | Line | Kind | Title | Stable label |
| --- | --- | --- | --- | --- |
| [01-sets-and-foundations/01-sets-and-countable-sets.tex](../sections/analysis-i/01-sets-and-foundations/01-sets-and-countable-sets.tex) | 81 | definition | Unnamed | `—` |
| [01-sets-and-foundations/01-sets-and-countable-sets.tex](../sections/analysis-i/01-sets-and-foundations/01-sets-and-countable-sets.tex) | 180 | proposition | Unnamed | `—` |
| [01-sets-and-foundations/01-sets-and-countable-sets.tex](../sections/analysis-i/01-sets-and-foundations/01-sets-and-countable-sets.tex) | 199 | proposition | Unnamed | `—` |
| [01-sets-and-foundations/02-rational-gaps.tex](../sections/analysis-i/01-sets-and-foundations/02-rational-gaps.tex) | 18 | proposition | Unnamed | `—` |
| [01-sets-and-foundations/02-rational-gaps.tex](../sections/analysis-i/01-sets-and-foundations/02-rational-gaps.tex) | 32 | lemma | Euclid's lemma on prime divisors | `thm:analysis-i:euclid-prime-divisors` |
| [01-sets-and-foundations/03-power-sets-and-real-numbers.tex](../sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex) | 29 | theorem | Cantor | `thm:analysis-i:cantor` |
| [01-sets-and-foundations/03-power-sets-and-real-numbers.tex](../sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex) | 46 | theorem | Cantor--Bernstein | `thm:analysis-i:cantor-bernstein` |
| [01-sets-and-foundations/03-power-sets-and-real-numbers.tex](../sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex) | 102 | theorem | Positional representation | `thm:analysis-i:positional-representation` |
| [01-sets-and-foundations/03-power-sets-and-real-numbers.tex](../sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex) | 139 | proposition | Unnamed | `thm:analysis-i:binary-interval-cardinality` |
| [01-sets-and-foundations/03-power-sets-and-real-numbers.tex](../sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex) | 450 | proposition | Unnamed | `thm:analysis-i:algebraic-transcendental-cardinalities` |
| [01-sets-and-foundations/04-convergence-and-iteration.tex](../sections/analysis-i/01-sets-and-foundations/04-convergence-and-iteration.tex) | 31 | proposition | Unnamed | `thm:analysis-i:absolute-value-inequalities` |
| [01-sets-and-foundations/04-convergence-and-iteration.tex](../sections/analysis-i/01-sets-and-foundations/04-convergence-and-iteration.tex) | 51 | definition | Unnamed | `—` |
| [01-sets-and-foundations/04-convergence-and-iteration.tex](../sections/analysis-i/01-sets-and-foundations/04-convergence-and-iteration.tex) | 71 | proposition | Unnamed | `thm:analysis-i:limit-laws` |
| [01-sets-and-foundations/05-fields-and-order.tex](../sections/analysis-i/01-sets-and-foundations/05-fields-and-order.tex) | 11 | definition | Unnamed | `—` |
| [01-sets-and-foundations/05-fields-and-order.tex](../sections/analysis-i/01-sets-and-foundations/05-fields-and-order.tex) | 24 | proposition | Unnamed | `—` |
| [01-sets-and-foundations/05-fields-and-order.tex](../sections/analysis-i/01-sets-and-foundations/05-fields-and-order.tex) | 52 | definition | Unnamed | `—` |
| [01-sets-and-foundations/06-supremum.tex](../sections/analysis-i/01-sets-and-foundations/06-supremum.tex) | 6 | definition | Unnamed | `—` |
| [01-sets-and-foundations/06-supremum.tex](../sections/analysis-i/01-sets-and-foundations/06-supremum.tex) | 21 | property | Least upper bound property (LUBP) | `thm:analysis-i:lubp` |
| [01-sets-and-foundations/06-supremum.tex](../sections/analysis-i/01-sets-and-foundations/06-supremum.tex) | 52 | theorem | Archimedean property | `thm:analysis-i:archimedean` |
| [01-sets-and-foundations/07-completeness-equivalences.tex](../sections/analysis-i/01-sets-and-foundations/07-completeness-equivalences.tex) | 11 | theorem | Completeness equivalences | `—` |
| [01-sets-and-foundations/08-induction-and-archimedean-property.tex](../sections/analysis-i/01-sets-and-foundations/08-induction-and-archimedean-property.tex) | 23 | proposition | Unnamed | `—` |
| [01-sets-and-foundations/09-denseness-and-closure.tex](../sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex) | 10 | definition | Unnamed | `—` |
| [01-sets-and-foundations/09-denseness-and-closure.tex](../sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex) | 78 | proposition | Unnamed | `thm:analysis-i:extreme-limit-points` |
| [01-sets-and-foundations/09-denseness-and-closure.tex](../sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex) | 131 | definition | Unnamed | `—` |
| [01-sets-and-foundations/09-denseness-and-closure.tex](../sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex) | 160 | proposition | Unnamed | `—` |
| [01-sets-and-foundations/09-denseness-and-closure.tex](../sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex) | 176 | definition | Unnamed | `—` |
| [01-sets-and-foundations/09-denseness-and-closure.tex](../sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex) | 184 | theorem | Density of the rational numbers | `thm:analysis-i:rational-density` |
| [01-sets-and-foundations/09-denseness-and-closure.tex](../sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex) | 357 | proposition | Unnamed | `thm:analysis-i:e-irrational` |
| [01-sets-and-foundations/11-roots-and-rational-powers.tex](../sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex) | 35 | theorem | Existence and uniqueness of roots | `thm:analysis-i:positive-roots` |
| [01-sets-and-foundations/11-roots-and-rational-powers.tex](../sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex) | 136 | proposition | Unnamed | `—` |
| [03-sequences-of-real-numbers/01-convergent-sequences.tex](../sections/analysis-i/03-sequences-of-real-numbers/01-convergent-sequences.tex) | 11 | definition | Unnamed | `—` |
| [03-sequences-of-real-numbers/01-convergent-sequences.tex](../sections/analysis-i/03-sequences-of-real-numbers/01-convergent-sequences.tex) | 74 | theorem | Squeeze principle | `thm:analysis-i:squeeze` |
| [03-sequences-of-real-numbers/01-convergent-sequences.tex](../sections/analysis-i/03-sequences-of-real-numbers/01-convergent-sequences.tex) | 108 | definition | Unnamed | `—` |
| [03-sequences-of-real-numbers/01-convergent-sequences.tex](../sections/analysis-i/03-sequences-of-real-numbers/01-convergent-sequences.tex) | 160 | proposition | Unnamed | `thm:analysis-i:root-sequence-limits` |
| [03-sequences-of-real-numbers/02-monotone-bounded-sequence-theorem.tex](../sections/analysis-i/03-sequences-of-real-numbers/02-monotone-bounded-sequence-theorem.tex) | 7 | theorem | Monotone bounded sequence theorem | `thm:analysis-i:monotone-convergence` |
| [03-sequences-of-real-numbers/02-monotone-bounded-sequence-theorem.tex](../sections/analysis-i/03-sequences-of-real-numbers/02-monotone-bounded-sequence-theorem.tex) | 29 | proposition | Arithmetic--geometric mean inequality | `thm:analysis-i:am-gm` |
| [03-sequences-of-real-numbers/02-monotone-bounded-sequence-theorem.tex](../sections/analysis-i/03-sequences-of-real-numbers/02-monotone-bounded-sequence-theorem.tex) | 111 | proposition | The binomial limit | `thm:analysis-i:binomial-limit` |
| [03-sequences-of-real-numbers/03-bolzano-weierstrass-theorem.tex](../sections/analysis-i/03-sequences-of-real-numbers/03-bolzano-weierstrass-theorem.tex) | 14 | theorem | Bolzano--Weierstrass | `thm:analysis-i:bolzano-weierstrass` |
| [03-sequences-of-real-numbers/04-upper-and-lower-limits.tex](../sections/analysis-i/03-sequences-of-real-numbers/04-upper-and-lower-limits.tex) | 66 | proposition | Unnamed | `—` |
| [03-sequences-of-real-numbers/05-cauchy-sequences.tex](../sections/analysis-i/03-sequences-of-real-numbers/05-cauchy-sequences.tex) | 14 | definition | Unnamed | `—` |
| [03-sequences-of-real-numbers/05-cauchy-sequences.tex](../sections/analysis-i/03-sequences-of-real-numbers/05-cauchy-sequences.tex) | 46 | theorem | Cauchy completeness of the real numbers | `thm:analysis-i:cauchy-completeness` |
| [04-infinite-series-of-numbers/01-number-series.tex](../sections/analysis-i/04-infinite-series-of-numbers/01-number-series.tex) | 9 | definition | Unnamed | `—` |
| [04-infinite-series-of-numbers/01-number-series.tex](../sections/analysis-i/04-infinite-series-of-numbers/01-number-series.tex) | 16 | theorem | Cauchy criterion for series | `thm:analysis-i:series-cauchy` |
| [04-infinite-series-of-numbers/01-number-series.tex](../sections/analysis-i/04-infinite-series-of-numbers/01-number-series.tex) | 55 | proposition | Unnamed | `thm:analysis-i:series-term-test` |
| [04-infinite-series-of-numbers/02-comparison-tests.tex](../sections/analysis-i/04-infinite-series-of-numbers/02-comparison-tests.tex) | 7 | definition | Unnamed | `—` |
| [04-infinite-series-of-numbers/02-comparison-tests.tex](../sections/analysis-i/04-infinite-series-of-numbers/02-comparison-tests.tex) | 12 | theorem | Comparison with a majorant | `thm:analysis-i:series-comparison` |
| [04-infinite-series-of-numbers/02-comparison-tests.tex](../sections/analysis-i/04-infinite-series-of-numbers/02-comparison-tests.tex) | 91 | theorem | Ratio test | `thm:analysis-i:ratio-test` |
| [04-infinite-series-of-numbers/02-comparison-tests.tex](../sections/analysis-i/04-infinite-series-of-numbers/02-comparison-tests.tex) | 141 | theorem | Root test | `thm:analysis-i:root-test` |
| [04-infinite-series-of-numbers/04-conditional-convergence.tex](../sections/analysis-i/04-infinite-series-of-numbers/04-conditional-convergence.tex) | 14 | definition | Unnamed | `—` |
| [04-infinite-series-of-numbers/04-conditional-convergence.tex](../sections/analysis-i/04-infinite-series-of-numbers/04-conditional-convergence.tex) | 75 | definition | Cauchy product | `thm:analysis-i:cauchy-product` |
| [04-infinite-series-of-numbers/04-conditional-convergence.tex](../sections/analysis-i/04-infinite-series-of-numbers/04-conditional-convergence.tex) | 90 | theorem | Product of absolutely convergent series | `thm:analysis-i:absolute-cauchy-product` |
| [05-continuity/01-continuity.tex](../sections/analysis-i/05-continuity/01-continuity.tex) | 15 | definition | Limit of a function | `thm:analysis-i:function-limit` |
| [05-continuity/01-continuity.tex](../sections/analysis-i/05-continuity/01-continuity.tex) | 46 | definition | Continuity | `thm:analysis-i:continuity-at-a-point` |
| [05-continuity/01-continuity.tex](../sections/analysis-i/05-continuity/01-continuity.tex) | 96 | proposition | Limit laws | `thm:analysis-i:function-limit-laws` |
| [05-continuity/01-continuity.tex](../sections/analysis-i/05-continuity/01-continuity.tex) | 184 | theorem | Sequential characterization of continuity | `thm:analysis-i:sequential-continuity` |
| [05-continuity/01-continuity.tex](../sections/analysis-i/05-continuity/01-continuity.tex) | 216 | definition | Indicator function | `thm:analysis-i:indicator-function` |
| [05-continuity/01-continuity.tex](../sections/analysis-i/05-continuity/01-continuity.tex) | 338 | theorem | Composition of continuous functions | `thm:analysis-i:continuous-composition` |
| [05-continuity/02-extreme-value-theorem.tex](../sections/analysis-i/05-continuity/02-extreme-value-theorem.tex) | 7 | theorem | Extreme value theorem | `thm:analysis-i:extreme-value` |
| [05-continuity/03-intermediate-value-theorem.tex](../sections/analysis-i/05-continuity/03-intermediate-value-theorem.tex) | 14 | theorem | Intermediate value theorem | `thm:analysis-i:intermediate-value` |
| [05-continuity/03-intermediate-value-theorem.tex](../sections/analysis-i/05-continuity/03-intermediate-value-theorem.tex) | 102 | definition | Monotone functions | `thm:analysis-i:monotone-functions` |
| [05-continuity/03-intermediate-value-theorem.tex](../sections/analysis-i/05-continuity/03-intermediate-value-theorem.tex) | 113 | theorem | Continuity of an increasing inverse | `thm:analysis-i:continuous-inverse` |
| [05-continuity/04-uniform-continuity.tex](../sections/analysis-i/05-continuity/04-uniform-continuity.tex) | 14 | definition | Uniform continuity | `—` |
| [05-continuity/04-uniform-continuity.tex](../sections/analysis-i/05-continuity/04-uniform-continuity.tex) | 61 | theorem | Heine--Cantor | `thm:analysis-i:heine-cantor` |
| [05-continuity/04-uniform-continuity.tex](../sections/analysis-i/05-continuity/04-uniform-continuity.tex) | 149 | definition | Piecewise linear function | `—` |
| [05-continuity/04-uniform-continuity.tex](../sections/analysis-i/05-continuity/04-uniform-continuity.tex) | 178 | proposition | Piecewise linear approximation | `thm:analysis-i:polygonal-approximation` |
| [06-differentiation-and-applications/01-differentiation.tex](../sections/analysis-i/06-differentiation-and-applications/01-differentiation.tex) | 21 | definition | Derivative | `thm:analysis-i:derivative` |
| [06-differentiation-and-applications/01-differentiation.tex](../sections/analysis-i/06-differentiation-and-applications/01-differentiation.tex) | 85 | proposition | Differentiability implies continuity | `thm:analysis-i:differentiable-continuous` |
| [06-differentiation-and-applications/01-differentiation.tex](../sections/analysis-i/06-differentiation-and-applications/01-differentiation.tex) | 97 | definition | Left and right derivatives | `thm:analysis-i:one-sided-derivatives` |
| [06-differentiation-and-applications/01-differentiation.tex](../sections/analysis-i/06-differentiation-and-applications/01-differentiation.tex) | 265 | definition | Stationary point | `thm:analysis-i:stationary-point` |
| [06-differentiation-and-applications/01-differentiation.tex](../sections/analysis-i/06-differentiation-and-applications/01-differentiation.tex) | 273 | proposition | Interior extrema | `thm:analysis-i:interior-extremum` |
| [06-differentiation-and-applications/02-mean-value-theorems.tex](../sections/analysis-i/06-differentiation-and-applications/02-mean-value-theorems.tex) | 7 | theorem | Rolle's theorem | `thm:analysis-i:rolle` |
| [06-differentiation-and-applications/02-mean-value-theorems.tex](../sections/analysis-i/06-differentiation-and-applications/02-mean-value-theorems.tex) | 32 | theorem | Mean value theorem | `thm:analysis-i:mean-value` |
| [06-differentiation-and-applications/02-mean-value-theorems.tex](../sections/analysis-i/06-differentiation-and-applications/02-mean-value-theorems.tex) | 96 | corollary | Derivative signs and monotonicity | `thm:analysis-i:derivative-monotonicity` |
| [06-differentiation-and-applications/02-mean-value-theorems.tex](../sections/analysis-i/06-differentiation-and-applications/02-mean-value-theorems.tex) | 145 | proposition | Logarithms preserve order and monotonicity | `thm:analysis-i:logarithmic-monotonicity` |
| [06-differentiation-and-applications/02-mean-value-theorems.tex](../sections/analysis-i/06-differentiation-and-applications/02-mean-value-theorems.tex) | 281 | theorem | Cauchy's mean value theorem | `thm:analysis-i:cauchy-mean-value` |
| [06-differentiation-and-applications/03-taylor-theorem.tex](../sections/analysis-i/06-differentiation-and-applications/03-taylor-theorem.tex) | 27 | theorem | Taylor's theorem with Lagrange remainder | `thm:analysis-i:taylor-lagrange` |
| [06-differentiation-and-applications/04-convex-functions.tex](../sections/analysis-i/06-differentiation-and-applications/04-convex-functions.tex) | 8 | definition | Convex and concave functions | `thm:analysis-i:convex-function` |
| [06-differentiation-and-applications/04-convex-functions.tex](../sections/analysis-i/06-differentiation-and-applications/04-convex-functions.tex) | 32 | proposition | The second-derivative criterion | `thm:analysis-i:convex-second-derivative` |
| [06-differentiation-and-applications/04-convex-functions.tex](../sections/analysis-i/06-differentiation-and-applications/04-convex-functions.tex) | 71 | proposition | The second-derivative test | `thm:analysis-i:second-derivative-extremum` |
| [06-differentiation-and-applications/04-convex-functions.tex](../sections/analysis-i/06-differentiation-and-applications/04-convex-functions.tex) | 94 | proposition | Young's inequality | `thm:analysis-i:young-inequality` |
| [06-differentiation-and-applications/04-convex-functions.tex](../sections/analysis-i/06-differentiation-and-applications/04-convex-functions.tex) | 123 | theorem | Jensen's inequality for integral averages | `thm:analysis-i:jensen-integral` |
| [06-differentiation-and-applications/05-lhopital-rules.tex](../sections/analysis-i/06-differentiation-and-applications/05-lhopital-rules.tex) | 28 | theorem | L'Hopital's rule for 0/0 | `thm:analysis-i:lhopital-zero` |
| [06-differentiation-and-applications/05-lhopital-rules.tex](../sections/analysis-i/06-differentiation-and-applications/05-lhopital-rules.tex) | 90 | proposition | Logarithmic method for power limits | `thm:analysis-i:logarithmic-power-limits` |
| [06-differentiation-and-applications/06-inverse-function-theorem.tex](../sections/analysis-i/06-differentiation-and-applications/06-inverse-function-theorem.tex) | 10 | theorem | Derivative of an inverse | `thm:analysis-i:inverse-derivative` |
| [08-sequences-and-series-of-functions/01-sequences-of-functions.tex](../sections/analysis-i/08-sequences-and-series-of-functions/01-sequences-of-functions.tex) | 11 | definition | Pointwise convergence | `thm:analysis-i:pointwise-convergence` |
| [08-sequences-and-series-of-functions/02-series-of-functions.tex](../sections/analysis-i/08-sequences-and-series-of-functions/02-series-of-functions.tex) | 12 | definition | Series of functions | `thm:analysis-i:function-series` |
| [08-sequences-and-series-of-functions/03-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/03-uniform-convergence.tex) | 19 | definition | Uniform convergence | `thm:analysis-i:uniform-convergence` |
| [08-sequences-and-series-of-functions/03-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/03-uniform-convergence.tex) | 45 | theorem | Uniform limits preserve continuity | `thm:analysis-i:uniform-limit-continuity` |
| [08-sequences-and-series-of-functions/03-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/03-uniform-convergence.tex) | 89 | definition | Norm and supremum norm | `thm:analysis-i:supremum-norm` |
| [08-sequences-and-series-of-functions/03-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/03-uniform-convergence.tex) | 152 | definition | Equicontinuity | `thm:analysis-i:equicontinuity` |
| [08-sequences-and-series-of-functions/03-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/03-uniform-convergence.tex) | 171 | proposition | Uniform convergence gives equicontinuity | `thm:analysis-i:uniform-convergence-equicontinuity` |
| [08-sequences-and-series-of-functions/03-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/03-uniform-convergence.tex) | 197 | proposition | A shared modulus on a closed interval | `thm:analysis-i:uniform-equicontinuity` |
| [08-sequences-and-series-of-functions/04-cauchy-criterion-for-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/04-cauchy-criterion-for-uniform-convergence.tex) | 11 | definition | Uniformly Cauchy sequence | `thm:analysis-i:uniformly-cauchy` |
| [08-sequences-and-series-of-functions/04-cauchy-criterion-for-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/04-cauchy-criterion-for-uniform-convergence.tex) | 23 | theorem | Uniform Cauchy criterion | `thm:analysis-i:uniform-cauchy-criterion` |
| [08-sequences-and-series-of-functions/04-cauchy-criterion-for-uniform-convergence.tex](../sections/analysis-i/08-sequences-and-series-of-functions/04-cauchy-criterion-for-uniform-convergence.tex) | 66 | theorem | Weierstrass M-test | `thm:analysis-i:weierstrass-m-test` |
| [08-sequences-and-series-of-functions/06-power-series.tex](../sections/analysis-i/08-sequences-and-series-of-functions/06-power-series.tex) | 11 | definition | Unnamed | `—` |
| [08-sequences-and-series-of-functions/06-power-series.tex](../sections/analysis-i/08-sequences-and-series-of-functions/06-power-series.tex) | 26 | proposition | Unnamed | `thm:analysis-i:power-series-radius` |
| [08-sequences-and-series-of-functions/06-power-series.tex](../sections/analysis-i/08-sequences-and-series-of-functions/06-power-series.tex) | 83 | proposition | Uniform convergence inside the radius | `thm:analysis-i:power-series-local-uniform` |
| [08-sequences-and-series-of-functions/06-power-series.tex](../sections/analysis-i/08-sequences-and-series-of-functions/06-power-series.tex) | 115 | definition | Algebraic and transcendental functions | `thm:analysis-i:algebraic-function` |
| [08-sequences-and-series-of-functions/06-power-series.tex](../sections/analysis-i/08-sequences-and-series-of-functions/06-power-series.tex) | 161 | theorem | The exponential function | `thm:analysis-i:exponential-properties` |
| [08-sequences-and-series-of-functions/06-power-series.tex](../sections/analysis-i/08-sequences-and-series-of-functions/06-power-series.tex) | 204 | definition | Natural logarithm and positive-base powers | `thm:analysis-i:logarithm-real-powers` |
| [08-sequences-and-series-of-functions/06-analytic-and-approximation.tex](../sections/analysis-i/08-sequences-and-series-of-functions/06-analytic-and-approximation.tex) | 6 | definition | Real analytic function | `thm:analysis-i:analytic-function` |
| [08-sequences-and-series-of-functions/06-analytic-and-approximation.tex](../sections/analysis-i/08-sequences-and-series-of-functions/06-analytic-and-approximation.tex) | 73 | theorem | Weierstrass approximation theorem | `thm:analysis-i:weierstrass-approximation` |

## Validation

The shared bibliography change requires `make check`, including the book,
standalone formula sheet, and every homework from both supported working
directories. Inspect the rendered historical/portrait pages and the bibliography
for collisions, unresolved references, and licence credits. Build outcomes are
recorded in the task completion message; this inventory is an editorial record,
not a claim that a historical source was read when only its metadata was available.
