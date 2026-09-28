# Introduction to Mathematical Analysis

Collaborative student notes for Analysis I and II, typeset as a Tufte-style
LaTeX book with margin notes, figures, and shared mathematical notation.

**Work in progress:** Analysis I has a tentative nine-chapter outline. Much of
the current text and artwork is marked Tufte template material used to preview
the layout; it will be replaced with reviewed course notes. Analysis II is
reserved for a later course and is currently excluded from the book.

## Table of contents

- [Book outline](#book-outline)
- [Repository structure](#repository-structure)
- [Homework placement map](#homework-placement-map)
- [Build the notes](#build-the-notes)
- [Local customisation](#local-customisation)
- [Contributing](#contributing)
- [License and attribution](#license-and-attribution)

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
- [Prerequisite results](sections/appendices/prerequisite-results.tex)
- [Solutions to exercises](sections/appendices/exercise-solutions.tex)

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
  appendices/            Notation and prerequisite results
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

This is the internal record of homework reuse in the book. All 16 completed
questions from Homework 01 and Homework 02 appear in Chapter 1, **Sets and
foundations of real analysis**. Each exercise has a directory of the form
`problems/hwNN/NN-topic/`, containing `problem.tex` and `solution.tex`.
The main chapters input only `problem.tex`. Full solutions appear in
[Appendix C, Solutions to exercises](sections/appendices/exercise-solutions.tex),
under the section **Sets and foundations of real analysis**, in book exercise
order. Each appendix entry repeats the complete shared `problem.tex` before
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
| [HW01 Q1](problems/hw01/01-de-morgan/problem.tex) | De Morgan's laws for arbitrary families | [§1.1 Sets and countable sets](sections/analysis-i/01-sets-and-foundations/01-sets-and-countable-sets.tex), Exercises on sets and enumeration | [1](problems/hw01/01-de-morgan/solution.tex) | `hw01:de-morgan` | Included |
| [HW01 Q2](problems/hw01/02-power-set/problem.tex) | Iterated power sets and finite cardinality | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), after the finite power-set formula | [4](problems/hw01/02-power-set/solution.tex) | `hw01:power-set` | Included |
| [HW01 Q3](problems/hw01/03-prime-roots/problem.tex) | Irrationality of prime roots | [§1.2 Rational gaps and irrational numbers](sections/analysis-i/01-sets-and-foundations/02-rational-gaps.tex), after the proof for the square root of two | [3](problems/hw01/03-prime-roots/solution.tex) | `hw01:prime-roots` | Included |
| [HW01 Q4](problems/hw01/04-interval-to-reals/problem.tex) | A bijection between an interval and the real line | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on the cardinality of intervals | [5](problems/hw01/04-interval-to-reals/solution.tex) | `hw01:interval-to-reals` | Included |
| [HW01 Q5](problems/hw01/05-open-to-closed-interval/problem.tex) | A bijection between open and closed intervals | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on the cardinality of intervals | [6](problems/hw01/05-open-to-closed-interval/solution.tex) | `hw01:open-to-closed-interval` | Included |
| [HW01 Q6](problems/hw01/06-transcendental-cardinality/problem.tex) | Countability of algebraic numbers; transcendental cardinality under CH | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on transcendence | [8](problems/hw01/06-transcendental-cardinality/solution.tex) | `hw01:transcendental-cardinality` | Included |
| [HW01 Q7](problems/hw01/07-linear-independence/problem.tex) | Transcendence and linear independence over the rationals | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on transcendence | [9](problems/hw01/07-linear-independence/solution.tex) | `hw01:linear-independence` | Included |
| [HW01 Q8](problems/hw01/08-square-cardinality/problem.tex) | Digit interleaving, injections, and the cardinality of a square | [§1.3 Power sets and the size of the real line](sections/analysis-i/01-sets-and-foundations/03-power-sets-and-real-numbers.tex), Exercises on the cardinality of intervals, after Q4 and Q5 | [7](problems/hw01/08-square-cardinality/solution.tex) | `hw01:square-cardinality` | Included |
| [HW01 Q9](problems/hw01/09-irrational-roots/problem.tex) | Irrationality of roots of a positive irrational number | [§1.11 Roots and rational powers](sections/analysis-i/01-sets-and-foundations/11-roots-and-rational-powers.tex), after existence and uniqueness of roots | [16](problems/hw01/09-irrational-roots/solution.tex) | `hw01:irrational-roots` | Included |
| [HW01 Q10](problems/hw01/10-countable-union/problem.tex) | Countable unions and diagonal enumeration | [§1.1 Sets and countable sets](sections/analysis-i/01-sets-and-foundations/01-sets-and-countable-sets.tex), Exercises on sets and enumeration | [2](problems/hw01/10-countable-union/solution.tex) | `hw01:countable-union` | Included |
| [HW02 Q1](problems/hw02/01-nested-bounded-intervals/problem.tex) | Why nested intervals must be closed | [§1.7 The completeness proof chain](sections/analysis-i/01-sets-and-foundations/07-completeness-equivalences.tex), Exercises on the nested interval hypotheses | [11](problems/hw02/01-nested-bounded-intervals/solution.tex) | `hw02:nested-bounded-intervals` | Included |
| [HW02 Q2](problems/hw02/02-nested-closed-intervals/problem.tex) | Why nested intervals must be bounded | [§1.7 The completeness proof chain](sections/analysis-i/01-sets-and-foundations/07-completeness-equivalences.tex), Exercises on the nested interval hypotheses | [12](problems/hw02/02-nested-closed-intervals/solution.tex) | `hw02:nested-closed-intervals` | Included |
| [HW02 Q3](problems/hw02/03-nested-rational-intervals/problem.tex) | Incompleteness of the rationals and relative closedness | [§1.9 Denseness, closure, and completion](sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex), Exercises on the missing limits in the rationals | [14](problems/hw02/03-nested-rational-intervals/solution.tex) | `hw02:nested-rational-intervals` | Included |
| [HW02 Q4](problems/hw02/04-decreasing-sequence/problem.tex) | Monotonicity, Cauchy estimates, limits, infimum, and supremum | [§1.8 Induction and the Archimedean property](sections/analysis-i/01-sets-and-foundations/08-induction-and-archimedean-property.tex), Exercise on bounds and convergence | [13](problems/hw02/04-decreasing-sequence/solution.tex) | `hw02:decreasing-sequence` | Included |
| [HW02 Q5](problems/hw02/05-factorial-sequence/problem.tex) | A bounded rational set with an irrational supremum | [§1.9 Denseness, closure, and completion](sections/analysis-i/01-sets-and-foundations/09-denseness-and-closure.tex), Exercises on the missing limits in the rationals | [15](problems/hw02/05-factorial-sequence/solution.tex) | `hw02:factorial-sequence` | Included |
| [HW02 Q6](problems/hw02/06-newton-iteration/problem.tex) | Newton iteration, fixed points, bounds, and monotone convergence | [§1.4 Convergence and iteration](sections/analysis-i/01-sets-and-foundations/04-convergence-and-iteration.tex), Exercise on Newton's method | [10](problems/hw02/06-newton-iteration/solution.tex) | `hw02:newton-iteration` | Included |

Placement follows the material assessed and the available prerequisites.
HW02 Q3 follows the floor function, rational density, and relative closure.
HW02 Q4 follows the Archimedean property used to choose its indices.
The Newton exercise previews monotone convergence, just as the lecture's
square-root iteration does. HW02 Q5 retains the original Taylor-remainder
argument, with an explicit note that Taylor's theorem comes later. HW01 Q6
retains its requested CH-based proof in the appendix; the lecture gives the
stronger result without CH.

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

Keep submission-specific page breaks in the handout entry files. Inside a
shared solution, wrap an essential handout-only layout hint in
`\handoutonly{...}` so it does not force a page break in the book. Put
appendix-specific page breaks in `sections/appendices/exercise-solutions.tex`.
`problems/template.tex` remains the unchanged standalone template.

## Build the notes

Use a LaTeX installation with pdfLaTeX, Tufte-LaTeX, biblatex, Biber, latexmk,
and makeindex, plus Make. The project has been built with TeX Live 2025.

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
