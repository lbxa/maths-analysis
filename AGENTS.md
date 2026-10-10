# Repository Guidelines

## Project Structure & Organization

Collaborative Tufte-style notes cover Mathematical Analysis I and II.

- `main.tex` assembles the book; `preamble.tex` holds packages and layout; `macros.tex` defines shared notation and theorem environments.
- `sections/analysis-i/part.tex` orders nine chapter directories. Each numbered directory contains `chapter.tex` and one numbered `.tex` file per topic, e.g. `01-sets-and-foundations/06-supremum.tex`.
- `sections/analysis-ii/part.tex` is reserved and excluded from the book until needed.
- `sections/front-matter/` holds copyright, introduction, and acknowledgements; `sections/appendices/` contains notation, assumed knowledge, and the solutions chapter.
- `problems/hwNN.tex` are standalone homework handouts using the shared preamble and macros.
- `problems/hwNN/NN-topic/problem.tex` holds a shared exercise statement; the adjacent `solution.tex` holds its solution. Do not add an `exercises/` subdirectory.
- `figures/` holds diagrams; `figures/template/` and `bibliography.bib` contain specimen assets and references. `build/` contains ignored generated output.

## Build & Development Commands

Install LaTeX with pdfLaTeX, Tufte-LaTeX, hyperref, aliascnt, caption, marginfix, biblatex, Biber, and latexmk. Run from the repository root:

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
- Let problems flow naturally in handouts and the solutions appendix. Do not insert `\clearpage`, `\newpage`, or other forced page breaks between problems. Resolve layout issues through local spacing and figure placement. Keep handout-specific layout in the handout entry file, or use `\handoutonly{...}` for a layout hint inside a shared solution. Leave `problems/template.tex` unchanged unless the user explicitly requests a template change.
- Before finishing any homework or book-structure change, verify that every map row agrees with the main-text and appendix inputs, ordering, and labels, and that every appendix solution follows the complete shared problem statement. Run `make check`, check for duplicate labels or destinations, verify links in both directions, and inspect both the book and affected handouts.

## Editorial Principles

Preserve the author's style and the course's flow of topics when turning lecture notes into publishable text. Capture all supplied mathematical content, including examples and questions. Improve clarity and organization without expanding the notes into an unrelated textbook; add only the supporting explanation needed for a coherent foundation.

Keep the lecturer's syllabus chapters and sections, including their titles and order, as the organising framework. Reorganise content within that framework to introduce tools before their substantial use and before exercises that require them. Keep early motivation concise and return to its proof after the prerequisites. Consult the root and relevant chapter README changelogs before structural edits, and record agreed decisions and their rationale there.

Keep the rendered book independent of the semester schedule. Week numbers,
lecture dates or numbers, import batches, and coverage progress belong only
in internal README records, source filenames, and non-rendered TeX comments.
In reader-facing prose, headings, captions, and front matter, describe
mathematical topics and refer to chapters or sections. Preserve necessary
statements about assumptions, omitted proofs, and prerequisite dependencies.

Present imported lecture questions and tasks as examples with mathematical
titles, using the shared `example` environment rather than headings such as
"A question from the lecture". Give the working needed to make the example
self-contained using established tools, and keep its original classroom
prompt in internal source comments. Preserve the shared homework exercise
system for actual assignments.

Use shared mathematical environments and styles so the same kind of content has consistent typography wherever it appears. Reusing an exercise in an appendix must preserve its identity and presentation as an exercise.

## Style & Contribution Conventions

Work in the smallest relevant topic file. Use two-space indentation, lowercase hyphenated names, and explicit `\input` lists. Number files for reading order; keep labels independent of numeric prefixes, e.g. `sec:analysis-i:supremum`. Use `ch:`, `sec:`, `thm:`, `eq:`, `fig:`, and `ex:` prefixes. Keep shared notation in `macros.tex` and figure names topic-specific. Use black and gray for diagrams by default; reserve colour for a specific highlight or distinction.

Use `\autoref{...}` for numbered object references throughout the book and handouts, including body text, margin notes, captions, and proof headings. The shared definitions in `macros.tex` supply full, capitalised names such as Figure, Table, Theorem, Lemma, Proposition, Corollary, Definition, Property, Example, Exercise, and Remark. Equations render as `Equation (1.2)`; sections and subsections render as `§ 1.2`. Do not prepend an object name or `\S`, use bare `\ref` or `\eqref`, or type reference numbers by hand. For a range, reference both endpoints with `\autoref`, for example `\autoref{sec:first}--\autoref{sec:last}`. Use `\autoref*` only when intentionally suppressing a link, and retain `\pageref` for page numbers and descriptive `\hyperref` links for solution navigation. Define new numbered result environments through `\newsharedtheorem` so their automatic names remain distinct while they share the theorem counter. Preserve the late `hyperref` load and shared `caption` setup in `preamble.tex`.

- In displayed equations, use `\quad` to separate leading quantifiers from their statements.
- In set-builder notation, use `\mid` and rely on LaTeX's automatic spacing.
- Add `\,` only when a small extra gap improves readability; do not add it automatically to every set.

Mark only additions and replacements awaiting author review, at the smallest
readable span. Keep the author's unchanged wording, equations, proof heading,
and conclusion in their normal colour; do not wrap an existing proof or section
just because some of it was edited. Use the shared `pendingreview` environment
in `macros.tex` for a wholly new or replaced passage, and
`\pendingreviewtext{...}` for an inline correction or part of an equation.
The muted slate blue (`#486581`) denotes pending editorial status.
For a wholly new theorem, proof, or example, keep its normal environment
inside the wrapper, preserving its typography, numbering, and links.
Use this component rather than local colour commands, and reserve its colour
for review status.
After the author approves a passage, remove only its review wrapper so the
content returns to the surrounding text colour. Do not remove pending status
without the author's approval.

Write proofs in clear English with complete sentences and proper grammar and punctuation. Do not use colons in proof prose. The main body must form a complete, continuous proof when the margin is ignored. Keep essential theorem and lemma invocations, the relevant hypotheses, their application, and every logical step and conclusion in the body. Reserve the right margin for visual guides, optional reminders of general results, and secondary observations. Do not move a necessary justification into a sidenote merely because it mentions a theorem or lemma, and avoid repeating the same reminder throughout a handout.

Align margin notes with the relevant passage and leave them unnumbered, without footnote-style markers in the body. Match figure-caption text size to ordinary margin text. Author mathematical diagrams in TikZ with consistent styling; use margin figures for compact illustrations and full-width figures when they need the space.

Keep margin placement in the shared `preamble.tex` configuration. It uses
`marginfix` to stack complete figures and captions with a 12pt gap and a
6pt bottom reserve, moving excess margin content intact to the next page.
Optional margin offsets are preferred callout positions, not guaranteed
placements. Do not insert negative space, smashed content, or manual page
breaks to fit a crowded margin. Give a diagram that cannot fit in one margin
a main-text or full-width figure instead of shrinking its labels. Preserve
the measured height of side captions and captions below full-width figures.

Use bold caption labels and numbers followed by a full stop, for example **Figure 1.1.** or **Table 2.1.**, with ordinary-weight caption text. Apply this through the shared `caption` configuration in `preamble.tex` for every float type in the book and handouts; retain Tufte's margin font and alignment rather than formatting individual captions by hand.

Replace `TUFTE PLACEHOLDER` blocks with reviewed notes; remove unused specimen assets/helpers. Cite sources with stable keys. Coordinate reordering and shared-file edits to reduce conflicts. Preserve the documented `nohyper` contents workaround unless testing a deliberate layout revision.

Use bracketed numeric citations such as `[1]` in the text and a properly formatted bibliography after the main content and before the appendices. Citation keys must resolve to readable references rather than appearing as raw keys or margin footnotes.

### TikZ diagram design

A diagram should clarify a specific mathematical idea through accurate geometry,
simple visual hierarchy, and generous whitespace. Clean spacing is a requirement
of the first finished version. Check the rendered result before presenting it.

- Plan the layout at its final printed size. Use margin figures for compact
  illustrations and full-width figures when the content needs more room. Keep
  text readable at the normal margin font size; simplify the layout or give it
  more space when it becomes crowded.
- Give labels clear space around their entire visible shape. Letters must not
  touch or cross lines, curves, point markers, arrowheads, or other labels.
  Use explicit physical offsets such as `below=5pt` or `right=4pt` as starting
  points, then check the actual gap. Account for marker radii, text height,
  superscripts, and descenders; a default `below` or `left` anchor does not
  guarantee clearance.
- Align comparable elements and use consistent row spacing, label positions,
  and gutters. Leave enough room between rows for both their labels and their
  distance arrows. Give the plot, legend, and caption distinct space.
- Place labels in open regions of the drawing. Put an origin label in a clear
  quadrant and keep axis names away from arrowheads. When curve names cannot
  fit comfortably beside their curves, use a separate legend with matching
  line samples. Preserve the mathematical strokes when resolving collisions.
- Keep the visual hierarchy restrained. Use black for the main construction
  and gray or dashed lines for secondary guides. Remove unnecessary tick
  labels and annotations when they compete with the idea being illustrated.
  Keep line weights, arrowheads, marker sizes, and fonts consistent across
  related diagrams.
- Use the shared thin `0.5pt` line weight for ordinary diagram edges, axes,
  and outlines throughout the book. Inherit it from `interval diagram` or
  `analysis diagram`; do not introduce `thick`, `semithick`, or a larger local
  line width for a new figure. Check the resolved width of additional styles,
  since a style such as `analysis curve` can override the picture's default.
  Use gray, dashes, or light fills for distinctions instead of heavier strokes.
  Compare the rendered strokes with an existing diagram at the same printed
  size, as well as checking label clearance.
- Use the shared styles in `figures/interval-styles.tex` for interval diagrams,
  including their line weights, endpoint diameters, arrowheads, fonts, and row
  spacing. Open and closed endpoints differ by fill only. Use explicit physical
  radii for circular point markers, e.g. `circle[radius=1.6pt]`, so unequal
  TikZ `x` and `y` units do not flatten them into ellipses.
- Preserve the mathematical meaning. Represent unbounded intervals with arrows,
  never a point at infinity; use ellipses to continue a sequence rather than
  inventing a final interval. Label schematic drawings explicitly and do not
  show excluded limit points as included endpoints. For function plots, draw
  the stated function, label arrowed axes, mark relevant intercepts, and put
  arrowheads on continued branches. Use equal axis units when the geometry
  depends on angles or reflection, such as inverse graphs across `y=x`.
- Every figure or diagram needs a caption, a stable label, and an explicit
  nearby body reference using `\autoref{fig:...}`. A caption alone does not
  count as an in-text reference. Match caption text size to ordinary margin text.
- Compile and visually inspect every edited diagram in the book and each
  affected handout. Check it at the final printed size for legibility, then
  zoom in to catch touching letters and strokes. Inspect the whole page for
  clipping, caption crowding, and collisions with adjacent margin content.
  Revise and render again until these defects are resolved; compilation success
  alone does not establish a clean diagram.

## Validation Guidelines

Run `make check` after edits. Inspect affected PDFs for margin collisions, equation overflow, contents numbering, and missing references or citations. Verify that every figure in an edited document is referenced in the body text and that all figure numbers resolve. Read each proof without its margin notes to check that no essential reasoning is missing from the body. Review mathematical correctness separately. No test suite, coverage threshold, formatter, or CI is configured.

## Commits & Pull Requests

Use imperative commit subjects such as `Add supremum notes`; history starts with `Initial Overleaf Import`. Keep contributions focused; add your name to `sections/front-matter/acknowledgements.tex`. PRs should identify changed topics, sources, build results, and related issues; include page screenshots for layout changes. Commit source figures, not generated PDFs or auxiliary files.

## Agent Instructions

For package, library, SDK, API, CLI, or cloud-service questions, use Context7: resolve the library ID, select the best relevant source, then query task-specific documentation. Explicit library IDs skip resolution. Ordinary prose edits and mathematical reasoning do not require it.
