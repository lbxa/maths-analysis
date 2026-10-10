# Introduction to Mathematical Analysis

Collaborative student notes for Analysis I and II, typeset as a Tufte-style
LaTeX book with margin notes, figures, and shared mathematical notation.

**Work in progress:** Analysis I follows the lecturer's nine-chapter syllabus.
The first three weeks of reviewed notes are in Chapter 1. Week 4 develops
Chapters 3 and 4 and the power-series section in Chapter 8. Other sections
still contain Tufte template material used to preview the layout, apart from
a retained Taylor-remainder application; specimens will be replaced with
course notes. Dirichlet's test and continuity await their lecture pages.
Analysis II is reserved for a later course and is currently excluded from the book.

## Table of contents

- [Book outline](#book-outline)
- [Repository structure](#repository-structure)
- [Homework placement map](#homework-placement-map)
- [Build the notes](#build-the-notes)
- [Local customisation](#local-customisation)
- [Contributing](#contributing)
- [License and attribution](#license-and-attribution)
- [Changelog](#changelog)

## Book outline

### Part I — Analysis I

1. [Sets and foundations of real analysis](sections/analysis-i/01-sets-and-foundations/)
2. [Metric spaces and topology](sections/analysis-i/02-metric-spaces-and-topology/)
3. [Sequences of real numbers](sections/analysis-i/03-sequences-of-real-numbers/)
4. [Infinite series of numbers](sections/analysis-i/04-infinite-series-of-numbers/)
5. [Continuity](sections/analysis-i/05-continuity/)
6. [Differentiation and its applications](sections/analysis-i/06-differentiation-and-applications/)
7. [Riemann integration](sections/analysis-i/07-riemann-integration/)
8. [Sequences and series of functions](sections/analysis-i/08-sequences-and-series-of-functions/)
9. [Fourier analysis](sections/analysis-i/09-fourier-analysis/)

### Part II — Analysis II

[Reserved for future chapters](sections/analysis-ii/). Add topics using the same
chapter-and-topic structure, then enable its input in `main.tex` when the course
begins.

### Appendices

- [Notation](sections/appendices/notation.tex)
- [Assumed knowledge](sections/appendices/assumed-knowledge.tex)
- [Solutions to exercises](sections/appendices/exercise-solutions.tex)
- [Formula sheet](sections/appendices/formula-sheet.tex)

Assumed knowledge recalls functions, their domains and codomains, and
injectivity, surjectivity, and bijectivity, with finite-set and Euclidean
examples. The [appendix changelog](sections/appendices/README.md#changelog)
records how this background supports the first-use definitions in the book.

## Repository structure

```text
main.tex                 Book entry point and reading order
preamble.tex             Packages, typography, and page layout
macros.tex               Shared notation and theorem environments
bibliography.bib         Sources and citation keys
sections/
  front-matter/          Copyright, introduction, and acknowledgements
  analysis-i/
    part.tex             Chapter order for Analysis I
    01-sets-and-foundations/
      chapter.tex        Chapter heading and topic order
      01-sets-and-countable-sets.tex
      06-supremum.tex
      ...
    ...
  analysis-ii/           Future second part
  appendices/            Notation, assumed knowledge, solutions, and formula sheet
problems/hwNN.tex         Standalone homework handouts
problems/hwNN/NN-topic/
  problem.tex            Shared exercise statement
  solution.tex           Shared solution and figure inputs
figures/                 Figure assets; template/ holds borrowed specimens
build/                   Generated PDFs and auxiliary files (ignored by Git)
Makefile                 Build, preview, and cleanup commands
AGENTS.md                Repository conventions for coding agents
CONTRIBUTING.md          Student contribution workflow
CUSTOMISATION.md         Local editor setup and machine-specific settings
LICENSE                  Apache License, Version 2.0
THIRD_PARTY_NOTICES.md    Attribution and license scope for borrowed material
```

Each topic has its own file so students can work on different subjects without
editing one large document. Explicit `\input` lists in `part.tex` and
`chapter.tex` determine the reading order.

## Homework placement map

This is the internal record of homework reuse in the book. All 32 questions
from Homework 01--04 are included. The 24 questions from Homework 01--03
appear in Chapter 1, **Sets and foundations of real analysis**, with completed
solutions. Homework 04 adds eight questions to Chapters 3 and 4 and §8.6;
Q1--Q8 have the author's solutions, with all audited edits approved in the
appendix and handout. The ten solution photos in
`images/HW05/` match Homework 04 Q4--Q8 and are recorded under those existing
identities rather than creating a duplicate assignment.
Each exercise has a directory of the form
`problems/hwNN/NN-topic/`, containing `problem.tex` and `solution.tex`.
The main chapters input only `problem.tex`. Solutions appear in
[Appendix C, Solutions to exercises](sections/appendices/exercise-solutions.tex),
grouped by the containing chapter, in book exercise order. Each appendix
entry repeats the complete shared `problem.tex` before
its `solution.tex` so it can be read on its own. The handouts input both
files, question first, so each statement and solution still has a single
shared source. There is no `exercises/` layer.

Homework question numbers identify the original assignments. The book uses
its normal section-based exercise numbering, so use the stable labels below
for cross-references rather than copying printed exercise or page numbers.
The standalone handouts retain their original question order and numbering.
The stable key in each row gives the exercise label `ex:<key>` and the
solution label `sol:<key>`. Each problem's `\solutionlink{<key>}` supplies an
unnumbered margin link to its solution's page. The appendix's
`\solutionheading{<key>}` selects the original book exercise number.
The following `restatedproblem` environment uses the same bold, inline
exercise label as the main text, with the number linked back to the original.
It inputs the complete problem body while suppressing duplicate exercise
numbering, labels, and margin links. The shared solution follows immediately
after the restated problem.

| Homework question / problem source | Content assessed | Book section and placement | Appendix order / solution source | Stable key | Status |
| --- | --- | --- | --- | --- | --- |
| [HW01 Q1](problems/hw01/01-de-morgan/problem.tex) | De Morgan's laws for arbitrary families | [§1.1 Sets and countable sets](sections/analysis-i/01-sets-and-foundations/01-sets-and-countable-sets.tex), Sets, operations, and maps, immediately after family membership and complements | [1](problems/hw01/01-de-morgan/solution.tex) | `hw01:de-morgan` | Included |
| [HW01 Q2](problems/hw01/02-power-set/problem.tex) | Iterated power sets and finite cardinality | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), after the finite power-set formula | [3](problems/hw01/02-power-set/solution.tex) | `hw01:power-set` | Included |
| [HW01 Q3](problems/hw01/03-prime-roots/problem.tex) | Irrationality of prime roots | [§1.11 Roots and rational powers](sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex), Exercises on roots and boundaries, after root existence and the reminder of Euclid's lemma | [18](problems/hw01/03-prime-roots/solution.tex) | `hw01:prime-roots` | Included |
| [HW01 Q4](problems/hw01/04-interval-to-reals/problem.tex) | A bijection between an interval and the real line | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on the cardinality of intervals, after the tangent bijection and inverse are stated | [4](problems/hw01/04-interval-to-reals/solution.tex) | `hw01:interval-to-reals` | Included |
| [HW01 Q5](problems/hw01/05-open-to-closed-interval/problem.tex) | A bijection between open and closed intervals | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on the cardinality of intervals, using countable shifts and bijections | [5](problems/hw01/05-open-to-closed-interval/solution.tex) | `hw01:open-to-closed-interval` | Included |
| [HW01 Q6](problems/hw01/06-transcendental-cardinality/problem.tex) | Countability of algebraic numbers; transcendental cardinality under CH | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on transcendence, after polynomial root bounds, algebraic countability, and CH, before the optional Jacobian excursion | [7](problems/hw01/06-transcendental-cardinality/solution.tex) | `hw01:transcendental-cardinality` | Included |
| [HW01 Q7](problems/hw01/07-linear-independence/problem.tex) | Transcendence and linear independence over the rationals | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on transcendence, after transcendental existence and the polynomial definition | [8](problems/hw01/07-linear-independence/solution.tex) | `hw01:linear-independence` | Included |
| [HW01 Q8](problems/hw01/08-square-cardinality/problem.tex) | Digit interleaving, injections, and the cardinality of a square | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on the cardinality of intervals, after positional representation, Cantor–Bernstein, and Q4–Q5 | [6](problems/hw01/08-square-cardinality/solution.tex) | `hw01:square-cardinality` | Included |
| [HW01 Q9](problems/hw01/09-irrational-roots/problem.tex) | Irrationality of roots of a positive irrational number | [§1.11 Roots and rational powers](sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex), Exercises on roots and boundaries, after root existence and Q3 | [19](problems/hw01/09-irrational-roots/solution.tex) | `hw01:irrational-roots` | Included |
| [HW01 Q10](problems/hw01/10-countable-union/problem.tex) | Countable unions and diagonal enumeration | [§1.1 Sets and countable sets](sections/analysis-i/01-sets-and-foundations/01-sets-and-countable-sets.tex), Exercise on enumeration, after diagonal traversal and the choice of lists | [2](problems/hw01/10-countable-union/solution.tex) | `hw01:countable-union` | Included |
| [HW02 Q1](problems/hw02/01-nested-bounded-intervals/problem.tex) | Why nested intervals must be closed | [§1.7 The completeness proof chain](sections/analysis-i/01-sets-and-foundations/07-completeness-equivalences.tex), Exercises on the nested interval hypotheses, after NIP and the earlier Archimedean proof | [10](problems/hw02/01-nested-bounded-intervals/solution.tex) | `hw02:nested-bounded-intervals` | Included |
| [HW02 Q2](problems/hw02/02-nested-closed-intervals/problem.tex) | Why nested intervals must be bounded | [§1.7 The completeness proof chain](sections/analysis-i/01-sets-and-foundations/07-completeness-equivalences.tex), Exercises on the nested interval hypotheses, after NIP and the earlier Archimedean proof | [11](problems/hw02/02-nested-closed-intervals/solution.tex) | `hw02:nested-closed-intervals` | Included |
| [HW02 Q3](problems/hw02/03-nested-rational-intervals/problem.tex) | Incompleteness of the rationals and relative closedness | [§1.9 Denseness, closure, and completion](sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex), Exercises on the missing limits in Q, after floor, rational density, relative closure, and squeeze estimates | [14](problems/hw02/03-nested-rational-intervals/solution.tex) | `hw02:nested-rational-intervals` | Included |
| [HW02 Q4](problems/hw02/04-decreasing-sequence/problem.tex) | Monotonicity, Cauchy estimates, limits, infimum, and supremum | [§1.8 Induction and the Archimedean property](sections/analysis-i/01-sets-and-foundations/08-induction-and-archimedean-property.tex), Exercise on bounds and convergence, after the sum-of-integers identity, triangle inequality, Cauchy definition, and Archimedean estimates | [12](problems/hw02/04-decreasing-sequence/solution.tex) | `hw02:decreasing-sequence` | Included |
| [HW02 Q5](problems/hw02/05-factorial-sequence/problem.tex) | A bounded rational set with an irrational supremum | [§1.9 Denseness, closure, and completion](sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex), The irrationality of e, after monotone convergence, geometric sums, the factorial-series definition, and its irrationality proof | [15](problems/hw02/05-factorial-sequence/solution.tex) | `hw02:factorial-sequence` | Included |
| [HW02 Q6](problems/hw02/06-newton-iteration/problem.tex) | Newton iteration, fixed points, bounds, and monotone convergence | [§1.11 Roots and rational powers](sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex), Returning to iteration, after tangent slopes, limit laws, monotone convergence, and positive roots | [23](problems/hw02/06-newton-iteration/solution.tex) | `hw02:newton-iteration` | Included |
| [HW03 Q1](problems/hw03/01-dedekind-infimum/problem.tex) | Greatest lower bound property directly from Dedekind cuts | [§1.7 The completeness proof chain](sections/analysis-i/01-sets-and-foundations/07-completeness-equivalences.tex), Exercise on the greatest lower bound property, after DC implies LUBP and the definitions of lower bounds and infimum | [9](problems/hw03/01-dedekind-infimum/solution.tex) | `hw03:dedekind-infimum` | Included; solution complete |
| [HW03 Q2](problems/hw03/02-cubic-dedekind-cut/problem.tex) | Cubic Dedekind partition, boundary, infimum, and supremum | [§1.11 Roots and rational powers](sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex), Exercises on roots and boundaries, after nonnegative root existence, cube monotonicity, and HW01 Q9 | [20](problems/hw03/02-cubic-dedekind-cut/solution.tex) | `hw03:cubic-dedekind-cut` | Included; solution complete |
| [HW03 Q3](problems/hw03/03-oscillating-sequence/problem.tex) | Subsequence limits, liminf, and limsup of an oscillating sequence | [§1.9 Denseness, closure, and completion](sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex), Upper and lower limits, after explicit subsequence selection, the sequence limit-point definition, tail-interval visual, extreme-limit-point proposition, convergence criterion, and sine-value reminder | [13](problems/hw03/03-oscillating-sequence/solution.tex) | `hw03:oscillating-sequence` | Included; solution complete |
| [HW03 Q4](problems/hw03/04-fibonacci-ratios/problem.tex) | Fibonacci growth, bounded ratios, and a conditional limit | [§1.11 Roots and rational powers](sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex), Exercise on Fibonacci ratios, after induction, Archimedean growth, limit laws, and square-root existence | [24](problems/hw03/04-fibonacci-ratios/solution.tex) | `hw03:fibonacci-ratios` | Included; solution complete |
| [HW03 Q5](problems/hw03/05-rational-interval-cover/problem.tex) | Rational interval covers, geometric-series length estimate, and completeness | [§1.9 Denseness, closure, and completion](sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex), Exercise on small interval covers, after enumeration, density, closure versus completion, and the geometric-sum estimate | [16](problems/hw03/05-rational-interval-cover/solution.tex) | `hw03:rational-interval-cover` | Included; solution complete |
| [HW03 Q6](problems/hw03/06-rational-exponent-laws/problem.tex) | Products of roots and laws of positive rational exponents | [§1.11 Roots and rational powers](sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex), A rational exponent must be well defined, after integer power laws, root uniqueness, and independence of the fraction representation | [21](problems/hw03/06-rational-exponent-laws/solution.tex) | `hw03:rational-exponent-laws` | Included; solution complete |
| [HW03 Q7](problems/hw03/07-reverse-triangle-inequality/problem.tex) | Reverse triangle inequality and its equality case | [§1.10 Polynomial functions and absolute value](sections/analysis-i/01-sets-and-foundations/10-elementary-functions.tex), Absolute value and distance, after the triangle-inequality reminder and the reverse-inequality argument | [17](problems/hw03/07-reverse-triangle-inequality/solution.tex) | `hw03:reverse-triangle-inequality` | Included; solution complete |
| [HW03 Q8](problems/hw03/08-odd-roots/problem.tex) | Odd roots as increasing bijections of the real line | [§1.11 Roots and rational powers](sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex), Exercise on odd roots of real numbers, after nonnegative root existence, power monotonicity, and rational exponent laws | [22](problems/hw03/08-odd-roots/solution.tex) | `hw03:odd-roots` | Included; solution complete |
| [HW04 Q1](problems/hw04/01-polynomial-root-limit/problem.tex) | High roots of a polynomially growing sequence | [§3.1 Convergent sequences](sections/analysis-i/03-sequences-of-real-numbers/01-convergent-sequences.tex), Exercises on root limits, after squeeze, geometric growth, and the limits of n-th roots | [25](problems/hw04/01-polynomial-root-limit/solution.tex) | `hw04:polynomial-root-limit` | Included; solution complete; audited edits approved |
| [HW04 Q2](problems/hw04/02-exponential-root-limit/problem.tex) | High roots with exponential and polynomial terms | [§3.1 Convergent sequences](sections/analysis-i/03-sequences-of-real-numbers/01-convergent-sequences.tex), Exercises on root limits, after geometric sequences, fixed-base roots, and squeeze | [26](problems/hw04/02-exponential-root-limit/solution.tex) | `hw04:exponential-root-limit` | Included; solution complete; audited edits approved |
| [HW04 Q3](problems/hw04/03-alternating-series/problem.tex) | Alternating-series convergence through the Cauchy criterion | [§4.1 Number series](sections/analysis-i/04-infinite-series-of-numbers/01-number-series.tex), after the Cauchy criterion, term test, and basic partial-sum examples | [28](problems/hw04/03-alternating-series/solution.tex) | `hw04:alternating-series` | Included; solution complete; audited edits approved |
| [HW04 Q4](problems/hw04/04-shifted-root-series/problem.tex) | Convergence with an arbitrary positive real shift and a telescoping sum | [§4.2 Comparison tests](sections/analysis-i/04-infinite-series-of-numbers/02-comparison-tests.tex), Exercises on comparison, after the majorant theorem and p-series | [29](problems/hw04/04-shifted-root-series/solution.tex) | `hw04:shifted-root-series` | Included; solution complete; audited edits approved |
| [HW04 Q5](problems/hw04/05-lower-upper-comparison/problem.tex) | Series comparison through lower and upper limits of term ratios | [§4.2 Comparison tests](sections/analysis-i/04-infinite-series-of-numbers/02-comparison-tests.tex), Exercises on comparison, after nonnegative partial-sum comparisons and §3.4 eventual tail bounds | [30](problems/hw04/05-lower-upper-comparison/solution.tex) | `hw04:lower-upper-comparison` | Included; solution complete; audited edits approved |
| [HW04 Q6](problems/hw04/06-divergence-tests/problem.tex) | Ratio and root divergence tests using liminf | [§4.2 Comparison tests](sections/analysis-i/04-infinite-series-of-numbers/02-comparison-tests.tex), after both tests, the term test, and eventual lower bounds | [31](problems/hw04/06-divergence-tests/solution.tex) | `hw04:divergence-tests` | Included; solution complete; audited edits approved |
| [HW04 Q7](problems/hw04/07-scaled-power-series/problem.tex) | Absolute convergence of a scaled power series with an integer exponent | [§8.6 Power series](sections/analysis-i/08-sequences-and-series-of-functions/06-power-series.tex), after radius, ratio/root tests, p-series, and separate endpoint analysis | [32](problems/hw04/07-scaled-power-series/solution.tex) | `hw04:scaled-power-series` | Included; solution complete; audited edits approved |
| [HW04 Q8](problems/hw04/08-two-variable-am-gm/problem.tex) | Two-variable AM--GM for nonnegative inputs and strictness | [§3.2 Monotone bounded sequence theorem](sections/analysis-i/03-sequences-of-real-numbers/02-monotone-bounded-sequence-theorem.tex), after the AM--GM applications, with positive roots and elementary algebra available | [27](problems/hw04/08-two-variable-am-gm/solution.tex) | `hw04:two-variable-am-gm` | Included; solution complete; audited edits approved |

Placement follows the material assessed and the available prerequisites.
HW02 Q3 follows the floor function, rational density, and relative closure.
HW02 Q4 follows the Archimedean property used to choose its indices.
The Newton and Fibonacci exercises now follow positive-root existence and
the limit laws; Newton also follows monotone convergence. HW02 Q5 uses the
factorial-series definition of e, so its solution needs no Taylor theorem.
The Taylor-remainder identification with exp(1) is retained as a later
application in [§6.3 Taylor's theorem](sections/analysis-i/06-differentiation-and-applications/03-taylor-theorem.tex).
HW01 Q6
retains its requested CH-based proof in the appendix; the lecture gives the
stronger result without CH.

Homework 03 was transcribed from the two-page assignment
`HW3 Intro to Math Analysis I (1).pdf` (MA-GY-6213, due October 2, 2026).
Q2 follows the root theorem needed to identify its cubic boundary. The
source's `B` membership typo is corrected to subset notation in part (a),
and Q4 explicitly interprets increasing as nondecreasing. Q3 assumes the
usual elementary sine values. Q5 follows a proved geometric-sum estimate;
its surrounding text distinguishes
small total covering length from metric incompleteness. The Week 3 topic
summary is source metadata rather than an additional exercise. The assignment
PDF supplied no solutions. The author's proof for Homework 03 Q1 is preserved,
and Questions 2–8 now have complete shared solutions in the same plain-English
style, with TikZ diagrams where they clarify the reasoning.

Homework 04 was transcribed from the two-page assignment
`HW4 Intro to Math Analysis I.pdf` (MA-GY-6213, due October 9, 2026).
Page 1 contains Q1--Q5, with roman subparts in Q5; page 2 contains
Q6--Q8, with roman subparts in Q6. All mathematical conditions and hints
are retained. In particular, Q4 allows any positive real shift, Q7 allows
every integer exponent, and Q8 includes zero inputs. Q6's classroom
introduction is recast as mathematical prose, with the original wording
kept in a source comment. The Week 4 topic summary remains internal metadata.
The assignment supplied no solutions. The author has now supplied solutions
to all eight questions, and all audited edits are approved. The factorisation,
squeeze arguments, and alternating-tail pairings in Q1--Q3 are
preserved, with eventual bounds, root parentheses, and parity endpoints
made explicit. Q4--Q8 retain the author's rationalisation, comparison,
divergence, root-test, and square-expansion arguments. The shared solutions
render in normal text colour in both the handout and appendix.
Appendix order is Q1, Q2, Q8, Q3, Q4, Q5, Q6, Q7,
matching the book, while the standalone handout preserves Q1--Q8.

Keep a row for every homework question, including questions not yet used.
Use **Included**, **Not yet included**, or **Deferred**; record a reason and
planned location when deferring a question. Update this map whenever a
question is added, moved, removed from the book, or relabelled, and whenever
a chapter or section changes its location. An `Included` row must correspond
to exactly one main-text input of `problem.tex` and one appendix pair of
`problem.tex` (inside `restatedproblem`) followed by `solution.tex`. Keep
the appendix inputs and the order column synchronized with the main text,
and check the links in both directions. Beyond this appendix restatement,
cross-reference an exercise when it is relevant again instead of repeating it.

Let problems flow naturally in handouts and the solutions appendix. Do not
insert forced page breaks between problems; adjust local spacing and figure
placement when needed. Keep handout-specific layout in the handout entry
files. Inside a shared solution, wrap a handout-only layout hint in
`\handoutonly{...}` so it does not affect the book.
`problems/template.tex` remains the unchanged standalone template.

## Build the notes

Use a LaTeX installation with pdfLaTeX, Tufte-LaTeX, hyperref, aliascnt,
caption, marginfix, biblatex, Biber, latexmk, and makeindex, plus Make. The project has been built
with TeX Live 2025.

From the repository root:

```sh
make book
```

The book is written to `build/main.pdf`. Bibliography and index passes are
managed by the build.

| Command | Purpose |
| --- | --- |
| `make` or `make book` | Build the book. |
| `make problem HW=hw02` | Build only Homework 02 into `build/problems/hw02.pdf`; omit `HW` for Homework 01. |
| `make problems` | Build each `problems/hw*.tex` into `build/problems/`. |
| `make check` | Build the book and all homework handouts. |
| `make watch` | Rebuild the book when sources change; stop with Ctrl-C. |
| `make watch-problems` | Watch Homework 01; use `HW=hw02` for another handout. |
| `make clean` | Remove generated PDFs and auxiliary build files. |

To build a single homework, run `make problem HW=hw02` and open
`build/problems/hw02.pdf` in your PDF viewer. For continuous rebuilding, run
`make watch-problems HW=hw02`; the watcher rebuilds when the handout or its
included sources change. Both commands use the filename without `.tex` for
`HW`; omit it to select `hw01`. New `problems/hwNN.tex` files work with these
commands automatically and are included by `make problems`. Stop either
watcher with Ctrl-C. The watch commands do not launch a PDF viewer automatically.

For Overleaf, upload the repository sources, select `main.tex` as the main
document, and use pdfLaTeX. Local builds should always run from the repository
root so shared inputs and figure paths resolve correctly.

## Local customisation

See [CUSTOMISATION.md](CUSTOMISATION.md) for LaTeX Workshop setup. Share portable
team settings in `.vscode/settings.json`. Keep machine-specific tool paths and
personal preferences in your editor's User `settings.json`, outside the
repository.

## Contributing

Explanations, proof corrections, examples, diagrams, and proofreading are
welcome. Read [CONTRIBUTING.md](CONTRIBUTING.md) for editing conventions,
validation, and pull request guidance. Add your name and optional contribution
details to the [acknowledgements](sections/front-matter/acknowledgements.tex).

## License and attribution

This project is licensed under the [Apache License, Version 2.0](LICENSE),
matching the book's copyright page and the borrowed Tufte-LaTeX template.
See [third-party notices](THIRD_PARTY_NOTICES.md) for the template's authors,
source credits, and the modifications made for these notes.

## Changelog

### 2026-10-09

- Record the author's approval of all Homework 04 edits, including
  Q4--Q8 supplied in `images/HW05/`, and remove all review wrappers in
  the shared solutions. Retain the approved content in normal text colour
  in both the handout and appendix.
- Transcribe the author's solutions to Homework 04 Q4--Q8 from the ten
  HEIC photos in `images/HW05/`, converted to JPEG with `scripts/jpeg.sh`.
  Match their statements to the existing exercise identities, retaining
  placement and appendix order. Mark only substantive corrections and
  additions with the shared pending-review component. Compare finite
  partial sums on the appropriate tails, choose strict liminf thresholds,
  and handle every integer exponent and both power-series endpoints.
  Reuse the convergence-band figure for the author's geometric recall.
- Queue margin notes and complete margin figures with `marginfix` in the
  shared preamble, maintaining a 12pt separation and 6pt bottom reserve.
  Treat offsets as preferred positions and measure side captions' full height
  so stacked charts cannot overlap or run off the page as pagination changes.
  Move excess content intact to the next page; use main-text or full-width
  figures when a single chart and caption cannot fit one margin readably.
- Audit the author's Homework 04 Q1--Q3 solutions while retaining their
  approaches. Establish the eventual polynomial bounds before taking
  limits, keep parentheses around the full base of an n-th root, and
  account for both finite-tail parities in the alternating-series proof.
  Mark only corrections and additions as drafts using the shared review
  component, and record their review status in the placement map. Preserve
  unchanged author text in its normal colour so each pending edit is visible.
- Keep the all-pairs Cauchy condition `m,n >= N` and explain its
  equivalence to `m > n >= N` through symmetry and the zero diagonal.
  Ordered indices make the series tail sum natural; they do not impose
  a stronger condition or restrict the comparison to consecutive terms.
- Import all eight Homework 04 questions as shared statements, a standalone
  handout, and complete appendix restatements with pending solution notices.
  Place Q1--Q2 and Q8 in Chapter 3, Q3--Q6 in Chapter 4, and Q7 in §8.6
  after the tools needed for their full statements, including endpoint tests.
  Preserve original question and roman subpart numbering in the handout;
  update the map and appendix to follow book exercise order.
- Add an automatically generated List of Theorems after the List of Tables,
  using the same front-matter heading and entry style on a new page.
  Entries use the numbered theorem blocks' optional titles, current numbers,
  and page links, so keep theorem titles descriptive rather than maintaining
  a separate catalogue by hand.
- Standardise additions awaiting author review with the `pendingreview`
  environment and inline `\pendingreviewtext` command in `macros.tex`.
  Use muted slate blue (`#486581`) to distinguish pending passages calmly
  from accepted text; remove the wrapper only after author approval, as
  described in [the style guide](AGENTS.md#style--contribution-conventions).
- Give AM–GM a numbered proposition and its sequence application a
  corresponding worked example, using the shared environments to separate
  the general result from its use.
- Present lecture questions and tasks as worked examples with mathematical
  titles and the shared `example` environment, so the manuscript explains
  the mathematics without classroom-prompt headings. Keep the original
  prompts in source comments and preserve the separate homework exercise
  system; use established tools to supply the example's reasoning.
- Keep the rendered manuscript independent of the semester schedule.
  Week numbers, lecture dates or numbers, import batches, and coverage
  progress are internal provenance, retained in README records, filenames,
  and TeX comments; reader-facing text follows mathematical topics and
  chapter or section references so the book remains useful across semesters.
  Keep assumptions and omitted-proof notices explicit. The corresponding
  style rule is in [AGENTS.md](AGENTS.md#editorial-principles).
- Import all visible material from the 17 Week 4 lecture photos, retaining
  the syllabus chapter and section titles and order. Develop sequence
  examples in Chapter 3, series and convergence tests in Chapter 4, and
  power-series examples in §8.6. Keep Chapter 1's proofs and homework
  placements, using cross-references and short recalls for prerequisites.
- Add six TikZ figures for convergence bands, squeeze bounds, root
  sequences, harmonic blocks, geometric upper bounds, and power-series
  endpoints. Use actual sequence terms where plotted, physical markers,
  and the shared thin diagram styles.
- Correct the lecture's geometric-limit slip, series-tail indices, and
  geometric bounds in the ratio and root tests. The chosen bound must lie
  above the limsup and below 1. Distinguish the endpoint cases for
  `x^n/n^s` and the two different exponents in `(1+1/n)^n` and
  `(1+1/n)^(1/n)`.
- Retain AM–GM and Euler's evaluation as stated results where proofs were
  not supplied. The logical review adds proofs identifying the binomial
  limit with the factorial-series `e` and establishing a power-series
  radius from comparison and a supremum; these use only earlier tools.
  Make the separate real-exponent assumptions explicit. Present the
  limit-law bounds and alternating
  series as worked examples, with classroom prompts kept in source comments.
  No continuity definition is visible in
  the supplied pages, and part of the final photo is obscured.

### 2026-10-05

- Add a portrait Formula sheet appendix with two columns for sequences and series, explicit hypotheses, and elementary summation identities. Place it after the solutions to preserve existing appendix references and homework ordering. Its compact layout is local to the sheet, with room to add later course topics.

### 2026-10-03

- Connect upper and lower limits in §1.9 to sequence limit points before HW03 Q3. Explain how increasing indices select actual terms, illustrate nested tail bounds, and prove that their limiting endpoints are the extreme subsequence limits. Explain why one convergent subsequence describes only selected terms, while a bounded sequence with a single limit point converges as a whole. Keep the distinction between an interval bounding all limit points and the set of limit points itself visible.
- Keep ordinary diagram strokes at the shared thin weight described in [the TikZ style guide](AGENTS.md#tikz-diagram-design). Extra drawing styles can override the inherited width, so check their resolved settings to prevent new geometric figures from looking heavier than the surrounding diagrams.
- Use the `caption` package in the shared preamble for bold figure and table labels followed by a full stop. Preserve Tufte's margin font and alignment, and place hyperlink targets at the captions because Tufte assembles them in separate margin boxes.
- Clear the pending list-end state after the full-width chapter title in `preamble.tex`. With the current LaTeX kernel, that state can overwrite the chapter's paragraph hook and make the first section after introductory prose lose its normal spacing; preserve the existing `titlesec` spacing rather than adding manual gaps to chapter files.
- Use `\autoref` for numbered object references throughout the book and handouts, with full capitalised names, parenthesised equation numbers, and `§` for sections. Centralise the convention in `macros.tex` to avoid inconsistent manual prefixes; alias counters distinguish the kinds of mathematical results without changing their shared numbering.
- Load `hyperref` late in both document classes, followed by the shared `caption` setup, preserving the contents and margin styling. Prepare PDF author metadata from the unexpanded author, and supply a plain-text optional author when possible, because Tufte's pre-expanded formatting can fail during metadata conversion.
- Keep the lecturer's syllabus chapters and sections, including their titles and order, as the book's organising framework. Improve the arrangement of explanations, proofs, examples, and exercises within that framework rather than replacing it with a new outline.
- Introduce the tools an argument needs before its substantial use, and place homework only after the student has the tools to solve it. Early motivation may name a later result, but its proof and assessed applications must follow the prerequisites.

The [Chapter 1 changelog](sections/analysis-i/01-sets-and-foundations/README.md#changelog)
explains how the first three weeks preserve the syllabus while resolving
prerequisite gaps. The [Chapter 6 changelog](sections/analysis-i/06-differentiation-and-applications/README.md#changelog)
records the later placement of the retained Taylor application.
