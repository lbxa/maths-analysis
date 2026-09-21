# Contributing

Help turn this shared outline into reliable notes for Introduction to
Mathematical Analysis. Contributions can be small: clarify an argument, fix a
symbol, add an example, or improve a diagram.

## Choose a topic

Check existing issues and pull requests for overlapping work. Coordinate
chapter reordering and changes to shared notation with other contributors.
For a correction, identify the topic and explain the mathematical issue;
include a source or counterexample when useful.

Create a focused branch in your fork or checkout, such as `notes/supremum`.
Keep unrelated topics in separate pull requests to make review easier.

## Edit the right files

- Write notes in the smallest relevant file under `sections/analysis-i/`.
  For example, supremum belongs in
  `sections/analysis-i/01-sets-and-foundations/02-supremum.tex`.
- Replace the complete `TUFTE PLACEHOLDER` block for a topic with course
  content, including its temporary grouping and `\sloppy` wrapper. Retain
  attribution for any specimen material you keep or adapt.
- Add a new topic to its chapter's explicit `\input` list. Add new chapters
  to the corresponding `part.tex`. Keep Analysis II disabled until needed.
- Put reusable notation in `macros.tex`, layout changes in `preamble.tex`,
  and bibliography entries in `bibliography.bib`.
- Store figures in `figures/` with descriptive names such as
  `supremum-upper-bounds.pdf`. Include editable diagram sources when available.
- Add homework as `problems/hwNN.tex`, following the existing standalone
  handout. Build it from the repository root.

## Write consistent mathematics and LaTeX

Use two-space indentation and lowercase, hyphenated filenames. Preserve the
`% !TEX root` hint in topic files. File numbers control organization; labels
should describe the subject and remain stable when files move:

```tex
\section{Supremum}
\label{sec:analysis-i:supremum}
```

Use the existing `definition`, `theorem`, `lemma`, `proposition`, `corollary`,
`example`, `exercise`, `remark`, and `proof` environments. Reuse notation such
as `\R` and `\N`. Refer to labels with `\ref` or `\eqref` instead of typing
result numbers, and use stable bibliography keys with `\cite`.

State assumptions precisely, define symbols before using them, and check each
proof step. Clearly identify unfinished arguments. Write explanations in your
own words and credit source texts, lectures, and reused figures.

Preserve the established Tufte layout: italic chapter titles, chapter-level
contents, and margin notes. Changes to typography or the `nohyper` setting
need a PDF check.

## Preview while editing

Run `make watch` for the book or `make watch-problems HW=hw01` for a homework
handout. Replace `hw01` with the file's basename, without `.tex`; Homework 01 is
the default. Open `build/main.pdf` or `build/problems/hw01.pdf` in your PDF
viewer. Changes to the selected document and its included files trigger a
rebuild. Stop with Ctrl-C.

## Validate the change

Run from the repository root:

```sh
make check
```

Read `build/main.pdf` and any affected `build/problems/hwNN.pdf`. Check the
contents and references, equations, citations, figure placement, and margin
collisions. Inspect build logs for errors, undefined references, and overfull
boxes. Review mathematical correctness separately from whether LaTeX compiles.

There is currently no automated mathematical test suite or coverage target.
For Markdown-only changes, check links and examples; a PDF rebuild is needed
when changing the book's text or layout.

## Submit a pull request

Use an imperative commit subject, for example `Add supremum examples`. In the
pull request, include:

- Topics changed and a short explanation of the improvement.
- Relevant sources and linked issues, if any.
- Build results and any remaining mathematical questions.
- A screenshot of affected pages when changing layout or diagrams.

Add or update your entry in
[`sections/front-matter/acknowledgements.tex`](sections/front-matter/acknowledgements.tex).
Commit source files and source figure assets; leave generated PDFs, logs, and
auxiliary files in the ignored `build/` directory.

## Licensing and attribution

Submit original contributions under the repository's
[Apache License, Version 2.0](LICENSE).
For reused material, record the source, author, and applicable license, and
retain its required notices. The existing Tufte specimens retain Apache 2.0
terms; see [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md). Keep those notices
with any retained or adapted template content.
