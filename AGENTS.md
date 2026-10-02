# Repository Guidelines

## Project Structure & Organization

Collaborative Tufte-style notes cover Mathematical Analysis I and II.

- `main.tex` assembles the book; `preamble.tex` holds packages and layout; `macros.tex` defines shared notation and theorem environments.
- `sections/analysis-i/part.tex` orders nine chapter directories. Each numbered directory contains `chapter.tex` and one numbered `.tex` file per topic, e.g. `01-sets-and-foundations/06-supremum.tex`.
- `sections/analysis-ii/part.tex` is reserved and excluded from the book until needed.
- `sections/front-matter/` holds copyright, introduction, and acknowledgements; `sections/appendices/` contains notation, prerequisite results, and the solutions chapter.
- `problems/hwNN.tex` are standalone homework handouts using the shared preamble and macros.
- `problems/hwNN/NN-topic/problem.tex` holds a shared exercise statement; the adjacent `solution.tex` holds its solution. Do not add an `exercises/` subdirectory.
- `figures/` holds diagrams; `figures/template/` and `bibliography.bib` contain specimen assets and references. `build/` contains ignored generated output.

## Build & Development Commands

Install LaTeX with pdfLaTeX, Tufte-LaTeX, biblatex, Biber, and latexmk. Run from the repository root:

- `make` or `make book`: build `build/main.pdf`, including bibliography and index passes.
- `make problem HW=hw02`: build only `problems/hw02.tex` into `build/problems/hw02.pdf`; omit `HW` to select `hw01`.
- `make problems`: build every `problems/hw*.tex` into `build/problems/`.
- `make check`: compile the book and homework handouts.
- `make watch`: rebuild the book when included sources change; stop with Ctrl-C.
- `make watch-problems`: watch `hw01`; use `HW=hw02` to select another handout. Stop with Ctrl-C.
- `make clean`: remove generated PDFs and auxiliary files through latexmk.

On Overleaf, select `main.tex` and pdfLaTeX.

## Shared and Local Editor Settings

Keep portable team settings, including the LaTeX Workshop formatter choice, in the version-controlled `.vscode/settings.json`. Do not ignore this file or the entire `.vscode` folder. Put machine-specific executable paths and personal preferences in the editor's User `settings.json`, outside the repository, and preserve existing settings when editing it. Leave machine-specific keys out of the shared file because workspace settings override User settings. Review shared settings for machine-specific paths before committing. Document reusable setup instructions in [CUSTOMISATION.md](CUSTOMISATION.md), with contributor guidance in [CONTRIBUTING.md](CONTRIBUTING.md).

## Homework Reuse and Placement Map

Always maintain the **Homework placement map** in [README.md](README.md#homework-placement-map). Treat it as the authoritative record of which homework questions are already used in the book.

- Keep one row for every homework question, including unused and deferred questions. Record the original homework/question number, both shared source files, assessed topic, book chapter and section/subsection, appendix order, stable exercise/solution label key, and inclusion status.
- Update the map in the same change whenever an exercise is added, embedded, moved, removed, or relabelled, or when its containing chapter or section is reorganized. Explain deferred placements and record their intended destination when known.
- Keep each question in `problems/hwNN/NN-topic/problem.tex` and its solution in the adjacent `solution.tex`. The handout inputs both files in that order. The main book chapters input only `problem.tex`; the appendix repeats the shared `problem.tex` before its `solution.tex` so each entry is self-contained. Do not copy statement, solution, or figure source into another file.
- Include each problem once in the main text and each problem/solution pair once in `sections/appendices/exercise-solutions.tex`, in the same order as the book's exercises. Use `\solutionheading{hwNN:topic}` to select the original exercise number, then input `problem.tex` inside `restatedproblem`, followed by `solution.tex`. The restatement must use the main text's bold, inline exercise label, with its number linked back to the original, rather than a separate section heading. The scoped `restatedproblem` environment suppresses duplicate exercise numbering, labels, and solution margin links. Preserve the handout's original question order and numbering; let the book use its own exercise numbering.
- Keep `\label{ex:hwNN:topic}` and `\solutionlink{hwNN:topic}` in each problem. The latter creates an unnumbered, clickable margin link to `sol:hwNN:topic` in the appendix and is suppressed in handouts. Later mentions must cross-reference the existing exercise instead of including it again.
- Place exercises by the content they assess and check prerequisites. Explain any deliberate forward use of a later result in the surrounding book text.
- Keep handout-specific layout in the handout entry file, or use `\handoutonly{...}` for a layout hint inside a shared solution. Keep appendix-only page breaks in the appendix chapter. Leave `problems/template.tex` unchanged unless the user explicitly requests a template change.
- Before finishing any homework or book-structure change, verify that every map row agrees with the main-text and appendix inputs, ordering, and labels, and that every appendix solution follows the complete shared problem statement. Run `make check`, check for duplicate labels or destinations, verify links in both directions, and inspect both the book and affected handouts.

## Editorial Principles

Preserve the author's style and the course's flow of topics when turning lecture notes into publishable text. Capture all supplied mathematical content, including examples and questions. Improve clarity and organization without expanding the notes into an unrelated textbook; add only the supporting explanation needed for a coherent foundation.

Use shared mathematical environments and styles so the same kind of content has consistent typography wherever it appears. Reusing an exercise in an appendix must preserve its identity and presentation as an exercise.

## Style & Contribution Conventions

Work in the smallest relevant topic file. Use two-space indentation, lowercase hyphenated names, and explicit `\input` lists. Number files for reading order; keep labels independent of numeric prefixes, e.g. `sec:analysis-i:supremum`. Use `ch:`, `sec:`, `thm:`, `eq:`, `fig:`, and `ex:` prefixes. Keep shared notation in `macros.tex` and figure names topic-specific. Use black and gray for diagrams by default; reserve colour for a specific highlight or distinction.

Format section cross-references throughout the book as `\S~\ref{sec:...}`, producing a section sign followed by the linked section number, for example § 1.2. Use `\S\S` for plural section references. Keep the nonbreaking space between the sign and number, use stable labels rather than hard-coded numbers, and apply this convention in body text, margin notes, and captions. Do not write `Section~\ref{...}` or substitute a section title for the numbered reference.

- In displayed equations, use `\quad` to separate leading quantifiers from their statements.
- In set-builder notation, use `\mid` and rely on LaTeX's automatic spacing.
- Add `\,` only when a small extra gap improves readability; do not add it automatically to every set.

Write proofs in clear English with complete sentences and proper grammar and punctuation. Do not use colons in proof prose. The main body must form a complete, continuous proof when the margin is ignored. Keep essential theorem and lemma invocations, the relevant hypotheses, their application, and every logical step and conclusion in the body. Reserve the right margin for visual guides, optional reminders of general results, and secondary observations. Do not move a necessary justification into a sidenote merely because it mentions a theorem or lemma, and avoid repeating the same reminder throughout a handout.

Align margin notes with the relevant passage and leave them unnumbered, without footnote-style markers in the body. Match figure-caption text size to ordinary margin text. Author mathematical diagrams in TikZ with consistent styling; use margin figures for compact illustrations and full-width figures when they need the space.

Every figure or diagram must have a caption, a stable label, and an explicit in-text reference near the passage it illustrates. Use `Figure~\ref{fig:...}` rather than hard-coded figure numbers. A caption alone does not count as an in-text reference.

Use explicit physical radii for circular point markers, e.g. `circle[radius=1.6pt]`, so unequal TikZ `x` and `y` coordinate units do not flatten them into ellipses.

Use the shared styles in `figures/interval-styles.tex` for interval diagrams so line weights, endpoint diameters, arrowheads, fonts, and row spacing match. Open and closed endpoints differ by fill only. Represent unbounded intervals with arrows, never a point at infinity; use ellipses to continue a sequence rather than inventing a final interval. Label schematic drawings explicitly and do not show excluded limit points as included endpoints.

For function plots, show labeled axes with arrowheads and mark the relevant intercepts. Plot the stated function rather than an arbitrary schematic rescaling, and use arrowheads on continued curve branches. Check label clearance at the final margin size.

Replace `TUFTE PLACEHOLDER` blocks with reviewed notes; remove unused specimen assets/helpers. Cite sources with stable keys. Coordinate reordering and shared-file edits to reduce conflicts. Preserve the documented `nohyper` contents workaround unless testing a deliberate layout revision.

Use bracketed numeric citations such as `[1]` in the text and a properly formatted bibliography after the main content and before the appendices. Citation keys must resolve to readable references rather than appearing as raw keys or margin footnotes.

## Validation Guidelines

Run `make check` after edits. Inspect affected PDFs for margin collisions, equation overflow, contents numbering, and missing references or citations. Verify that every figure in an edited document is referenced in the body text and that all figure numbers resolve. Read each proof without its margin notes to check that no essential reasoning is missing from the body. Review mathematical correctness separately. No test suite, coverage threshold, formatter, or CI is configured.

## Commits & Pull Requests

Use imperative commit subjects such as `Add supremum notes`; history starts with `Initial Overleaf Import`. Keep contributions focused; add your name to `sections/front-matter/acknowledgements.tex`. PRs should identify changed topics, sources, build results, and related issues; include page screenshots for layout changes. Commit source figures, not generated PDFs or auxiliary files.

## Agent Instructions

For package, library, SDK, API, CLI, or cloud-service questions, use Context7: resolve the library ID, select the best relevant source, then query task-specific documentation. Explicit library IDs skip resolution. Ordinary prose edits and mathematical reasoning do not require it.
