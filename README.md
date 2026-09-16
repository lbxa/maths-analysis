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
- [Build the notes](#build-the-notes)
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
      02-supremum.tex
      ...
    ...
  analysis-ii/           Future second part
  appendices/            Notation and prerequisite results
problems/hwNN.tex         Standalone homework handouts
figures/                 Figure assets; template/ holds borrowed specimens
build/                   Generated PDFs and auxiliary files (ignored by Git)
Makefile                 Build, preview, and cleanup commands
AGENTS.md                Repository conventions for coding agents
CONTRIBUTING.md          Student contribution workflow
LICENSE                  Apache License, Version 2.0
THIRD_PARTY_NOTICES.md    Attribution and license scope for borrowed material
```

Each topic has its own file so students can work on different subjects without
editing one large document. Explicit `\input` lists in `part.tex` and
`chapter.tex` determine the reading order.

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
| `make problems` | Build each `problems/hw*.tex` into `build/problems/`. |
| `make check` | Build the book and all homework handouts. |
| `make watch` | Rebuild the book when sources change; stop with Ctrl-C. |
| `make clean` | Remove generated PDFs and auxiliary build files. |

For Overleaf, upload the repository sources, select `main.tex` as the main
document, and use pdfLaTeX. Local builds should always run from the repository
root so shared inputs and figure paths resolve correctly.

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
