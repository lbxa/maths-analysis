# Repository Guidelines

## Project Structure & Organization

Collaborative Tufte-style notes cover Mathematical Analysis I and II.

- `main.tex` assembles the book; `preamble.tex` holds packages and layout; `macros.tex` defines shared notation and theorem environments.
- `sections/analysis-i/part.tex` orders nine chapter directories. Each numbered directory contains `chapter.tex` and one numbered `.tex` file per topic, e.g. `01-sets-and-foundations/02-supremum.tex`.
- `sections/analysis-ii/part.tex` is reserved and excluded from the book until needed.
- `sections/front-matter/` holds copyright, introduction, and acknowledgements; `sections/appendices/` contains notation and prerequisite results.
- `problems/hwNN.tex` are standalone homework handouts using the shared preamble and macros.
- `figures/` holds diagrams; `figures/template/` and `bibliography.bib` contain specimen assets and references. `build/` contains ignored generated output.

## Build & Development Commands

Install LaTeX with pdfLaTeX, Tufte-LaTeX, biblatex, Biber, and latexmk. Run from the repository root:

- `make` or `make book`: build `build/main.pdf`, including bibliography and index passes.
- `make problems`: build every `problems/hw*.tex` into `build/problems/`.
- `make check`: compile the book and homework handouts.
- `make watch`: rebuild the book when included sources change; stop with Ctrl-C.
- `make watch-problems`: watch `hw01`; use `HW=hw02` to select another handout. Stop with Ctrl-C.
- `make clean`: remove generated PDFs and auxiliary files through latexmk.

On Overleaf, select `main.tex` and pdfLaTeX.

## Style & Contribution Conventions

Work in the smallest relevant topic file. Use two-space indentation, lowercase hyphenated names, and explicit `\input` lists. Number files for reading order; keep labels independent of numeric prefixes, e.g. `sec:analysis-i:supremum`. Use `ch:`, `sec:`, `thm:`, `eq:`, `fig:`, and `ex:` prefixes. Keep shared notation in `macros.tex` and figure names topic-specific. Use black and gray for diagrams by default; reserve colour for a specific highlight or distinction.

Replace `TUFTE PLACEHOLDER` blocks with reviewed notes; remove unused specimen assets/helpers. Cite sources with stable keys. Coordinate reordering and shared-file edits to reduce conflicts. Preserve the documented `nohyper` contents workaround unless testing a deliberate layout revision.

## Validation Guidelines

Run `make check` after edits. Inspect affected PDFs for margin collisions, equation overflow, contents numbering, and missing references or citations. Review mathematical correctness separately. No test suite, coverage threshold, formatter, or CI is configured.

## Commits & Pull Requests

Use imperative commit subjects such as `Add supremum notes`; history starts with `Initial Overleaf Import`. Keep contributions focused; add your name to `sections/front-matter/acknowledgements.tex`. PRs should identify changed topics, sources, build results, and related issues; include page screenshots for layout changes. Commit source figures, not generated PDFs or auxiliary files.

## Agent Instructions

For package, library, SDK, API, CLI, or cloud-service questions, use Context7: resolve the library ID, select the best relevant source, then query task-specific documentation. Explicit library IDs skip resolution. Ordinary prose edits and mathematical reasoning do not require it.
