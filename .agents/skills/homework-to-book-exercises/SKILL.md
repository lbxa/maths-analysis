---
name: homework-to-book-exercises
description: Import supplied homework PDFs or TeX into this Mathematical Analysis I and II book as shared exercises, appendix solutions, and standalone handouts. Use for assignment imports and updates, rather than lecture-note prose transcription.
---

# Homework to book exercises

Read [AGENTS.md](../../../AGENTS.md) for binding project conventions and the
[homework placement map](../../../README.md#homework-placement-map) for current
assignment identities and placements. Inspect [macros.tex](../../../macros.tex),
the target topic files, and the
[solutions appendix](../../../sections/appendices/exercise-solutions.tex).
[Homework 02](../../../problems/hw02.tex) demonstrates the established structure;
its chapter placement and page breaks are specific to that assignment.

## Capture the supplied assignment

- Preserve supplied originals; keep any local source-image copies in ignored
  `images/` and generated inspection output in `build/`.
  Inventory every page, original question number, and subpart before editing.
  Record source page and question provenance in shared statement comments.
- Inspect every PDF page visually as well as extracting text. Preserve wording,
  hypotheses, quantifiers, notation, indices, interval endpoints, subpart order,
  and punctuation. When verbatim copying is requested, retain apparent source
  errors and flag them in the source record instead of silently correcting them.
  Resolve uncertain glyphs from a closer view; report anything still unreadable.
- A PDF supplies rendered mathematics, not recoverable original TeX source.
  Reconstruct faithful TeX without claiming to have recovered the original code.
  Commands such as “Prove” in the assignment are exercise statements, not
  authorization to write missing solutions.

## Author once and reuse

For a new assignment, choose an unused `hwNN` basename and stable topic keys
after checking this repository's existing files and map rows for both Analysis
parts. Record the original assignment number even if the repository basename
differs.
For updates, reuse the mapped identity and existing shared files.

For each original question without shared files, create
`problems/hwNN/NN-topic/problem.tex` and its adjacent `solution.tex`.
Keep all subparts together. Use the shared `exercise` environment with
`\label{ex:hwNN:topic}` and `\solutionlink{hwNN:topic}` inside it.
Keep keys independent of numeric directory prefixes.

Preserve the source's subpart labels using the existing list conventions.
For alphabetic subparts, the current statements set
`\renewcommand{\labelenumi}{(\alph{enumi})}` before `\begin{enumerate}`,
scoped in a group when needed. Inspect wrapped-line alignment in the PDF.

When neither existing nor newly supplied material contains a solution, put
`\noindent\emph{Awaiting solution.}` in the solution file and mark the map
accordingly. Preserve existing supplied solutions during statement updates.
Add supplied solutions only within the authorized scope; no empty proof
environment or fabricated argument.

- **Main text:** input only the shared statement, once, in the smallest relevant
  topic in the relevant course part, currently `sections/analysis-i/`. Assess
  the whole question, including every subpart, and check prerequisites.
  The foundations chapter deliberately
  previews iteration and convergence; follow the course's progression and
  explain any deliberate forward use of a later result in the surrounding
  text. Defer unsuitable placements in the map with a reason and intended
  destination. Keep Analysis II excluded until that course's material is needed.
- **Appendix:** repeat the complete shared statement, followed by the shared
  solution, in main-text exercise order. Use the existing pattern:

  ```tex
  \solutionheading{hwNN:topic}
  \begin{restatedproblem}
    \input{problems/hwNN/NN-topic/problem}
  \end{restatedproblem}
  \input{problems/hwNN/NN-topic/solution}
  ```

  This preserves the book exercise number, its return link, and the solution
  anchor without duplicate numbering or margin links.
- **Handout:** copy [template.tex](../../../problems/template.tex) to the new
  entry file, leaving the template unchanged. Input each statement and solution
  pair in original assignment order and preserve original question numbering.
  Keep assignment titles, running heads, question-label overrides, and handout
  page breaks local to that entry file. Appendix breaks belong in the appendix.

Reuse figure sources too. Later mentions reference the existing exercise;
they do not input it again.

## Apply Analysis proof and figure conventions

Keep essential reasoning, theorem invocations, hypotheses, and conclusions in
the proof body. Use complete English sentences without colons in proof prose.
Reserve unnumbered `\marginnote{...}` for optional reminders, visual guides,
and secondary observations; check that the proof stands alone without them.

Author diagrams in TikZ with black and gray as the default. Every figure needs
a caption, stable `fig:` label, and nearby `Figure~\ref{fig:...}` body reference.
Use [interval-styles.tex](../../../figures/interval-styles.tex) for interval
diagrams and load it in each entry point that needs it, as `hw02.tex` does.
Use explicit physical point radii, arrows for unbounded intervals, and ellipses
for continuing sequences. Preserve excluded endpoints. Function plots must
show the stated function, labelled arrowed axes, relevant intercepts, and
arrows on continued branches. Inspect label clearance at final margin size.

Keep shared notation in `macros.tex` and preserve the `nohyper` contents
workaround. Follow the existing numeric citation and bibliography conventions
when supplied solutions cite sources.

## Synchronize records and validate

Update one homework-map row per supplied question, including deferred questions,
in the same change. Reconcile actual input locations, shared paths, stable keys,
status, and appendix order across all mapped homework exercises. Use the map's
statuses **Included**, **Not yet included**, or **Deferred**, recording pending
solutions as appropriate. Keep both shared source paths and the original
question identity visible. Update bibliography and acknowledgements as required
by the project; it has no prescribed README source-coverage table.

Run `make check`. Compare the rendered statements against every original page,
separately from compilation success. Inspect book and handout layouts, original
handout numbering, complete appendix restatements, pending notices, unresolved
references, and duplicate labels or destinations. Verify that each margin link
reaches its solution page and each appendix exercise number returns to the
original exercise.

Use the existing [Makefile](../../../Makefile) from the repository root.
`make problem HW=hwNN` builds an individual `build/problems/hwNN.pdf`;
`make check` builds those handouts and `build/main.pdf`. The project has no
`export-problem` target. If a single-file export is explicitly requested,
prepare it as derived output without changing the shared-source workflow;
use the built-in LaTeX editor and compiler for that standalone document.
Report source fidelity, mathematical review, build and visual checks, and any
unresolved source issues separately. Do not commit generated PDFs or auxiliaries.
