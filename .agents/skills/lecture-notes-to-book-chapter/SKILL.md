---
name: lecture-notes-to-book-chapter
description: Incorporate supplied lecture images, scans, or PDFs into this Mathematical Analysis I and II LaTeX book, preserving the course's content and progression. Use for lecture transcription and chapter editing; use homework-to-book-exercises for assignment imports.
---

# Lecture notes to book chapter

Treat the supplied lecture pages as authoritative. Read
[AGENTS.md](../../../AGENTS.md), [CONTRIBUTING.md](../../../CONTRIBUTING.md),
the [book outline](../../../README.md#book-outline), and the relevant chapter
and topic files before editing. Inspect [macros.tex](../../../macros.tex) and
[preamble.tex](../../../preamble.tex) for existing notation and environments.

## Locate the material in this book

Analysis I uses numbered chapter directories under `sections/analysis-i/`.
[part.tex](../../../sections/analysis-i/part.tex) orders the nine chapters;
each `chapter.tex` explicitly inputs its numbered topic files. Work in the
smallest relevant topic file, such as
[06-supremum.tex](../../../sections/analysis-i/01-sets-and-foundations/06-supremum.tex).
The opening foundations chapter already discusses convergence, iteration,
and completeness before the later sequences chapter. Preserve this course
progression rather than moving material solely to match a generic textbook.

Replace `TUFTE PLACEHOLDER` material in the affected topics with reviewed
notes. Add or reorganize topic files when the supplied content needs it,
updating explicit inputs and the README outline as appropriate. Keep labels
independent of numeric filenames, for example `sec:analysis-i:supremum`.
[Analysis II](../../../sections/analysis-ii/part.tex) remains excluded from
`main.tex` until the author supplies that course's material and it is needed.

## Inspect the source

- Inventory source files in reading order and preserve originals. Local lecture
  images and converted copies belong in the ignored `images/` directory;
  generated build output belongs in `build/`. Check available conversion tools
  if needed; this repository does not prescribe a conversion script.
- View every page at a legible resolution. Group pages by lecture and sequence; do not rely on filenames alone when the handwritten page numbers or headings say otherwise.
- Make a working transcription outline keyed to source page and destination
  topic. Account for every mathematical item, example, question, diagram,
  caveat, and visible gap. Identify repeated pages, metadata, deferred material,
  and unresolved source issues. Distinguish stated results from supplied proofs.
  Keep useful provenance in TeX comments; add a README coverage table only when
  requested, rather than assuming the project already maintains one.

## Transcribe and edit

- Include only material supplied by the author or explicitly authorized. Do not fetch lecture slides, homework, or other linked material unless asked. Do not extrapolate future topics from a syllabus.
- Convert shorthand into clear, complete prose while preserving the lecturer's
  progression, notation, hypotheses, examples, and conclusions. Add the
  supporting explanation needed for a coherent foundation, as permitted by
  the project's editorial principles. Do not strengthen claims or invent
  substantial missing proofs, new results, or unrelated examples.
- Check formulas, indices, dimensions, signs, and quantifiers against the source image. If handwriting is uncertain, inspect a crop or higher-resolution view. When uncertainty remains, leave a precise source comment and ask the author; never silently guess.
- Flag mathematical contradictions, apparent errors, incomplete arguments, and TODOs. Do not put a known false or ambiguous statement in the reader-facing book as if established. Keep the author's intended material visible in an editor comment until clarified, or omit the unresolved claim and report it clearly.
- Retain the distinction between lecture notes and editorial explanation. Do
  not describe a result as proved in the supplied lecture when the source
  only states it. Keep source attributions faithful to the supplied material.

Write proofs as complete, continuous English arguments, without colons in proof
prose. Every necessary theorem invocation, hypothesis, application, and logical
step belongs in the body. Use unnumbered `\marginnote{...}` only for optional
reminders, visual guides, or secondary observations. Read the proof without
its margin notes to confirm that the reasoning is complete.

## Maintain shared presentation and records

- Redraw supplied diagrams in TikZ, preserving their mathematical meaning.
  Use black and gray unless colour conveys a specific distinction. Give every
  figure a caption, stable `fig:` label, and nearby body reference using
  `Figure~\ref{fig:...}`. Match caption size to margin text and inspect at the
  final printed size.
- For interval diagrams, use
  [interval-styles.tex](../../../figures/interval-styles.tex). Use physical
  point radii, arrows for unbounded intervals, and ellipses for continuing
  sequences. Open and closed endpoints differ by fill only. For function
  plots, draw the stated function with labelled arrowed axes, relevant
  intercepts, and arrows on continued branches.
- Check the [homework placement map](../../../README.md#homework-placement-map)
  before including a homework exercise. Reuse its shared `problem.tex`;
  reference an existing exercise instead of including it twice. Any exercise
  move or containing-section reorganization must update the map and appendix
  order in the same change. Use the homework skill for assignment imports.
- Keep shared notation in `macros.tex`, two-space indentation, and explicit
  input lists. Preserve the documented `nohyper` contents workaround.
  Add source metadata to `bibliography.bib` when needed and use bracketed
  numeric citations with readable bibliography entries before the appendices.
  Update acknowledgements and project records as required by `AGENTS.md`.

## Validate before finishing

- Run `make check` from the repository root after LaTeX edits. It builds
  `build/main.pdf` and all `build/problems/hwNN.pdf` handouts. Resolve build
  errors and inspect warnings, labels, references, and citations.
- Inspect the resulting PDF pages for typography, line and equation overflow, margin collisions, contents hierarchy, and figure placement. A successful compile alone is not visual validation.
- If homework placement changed, reconcile every map row with the main-text
  inputs and complete appendix statement/solution pairs. Check exercise order,
  duplicate labels or destinations, affected handouts, and links both ways.
- Compare the final text with the source outline page by page. Confirm that supplied material has not been lost or duplicated and that no unsupported mathematical content was introduced.
- Review mathematical correctness separately from transcription and layout.
  Report edited topics, converted files, checks performed, and unresolved
  transcription or mathematical questions. Keep generated PDFs and auxiliary
  files out of source commits.
