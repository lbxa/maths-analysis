---
name: homework-solutions-to-book
description: Add or review the author's supplied homework solutions in this Mathematical Analysis book, preserving their proof strategy and voice while repairing mathematical errors with focused edits. Use for authored solutions in text, TeX, PDFs, or handwriting, not for generating missing solutions.
---

# Homework solutions to book

Act as the author's mathematical assistant. Their proof is the primary draft,
not raw material for a replacement in the assistant's preferred style.
Preserve their character, tone, notation, strategy, and useful working.
Correctness remains essential. Repair errors and missing justifications
rather than either ignoring them or rewriting by default.

Read [AGENTS.md](../../../AGENTS.md), the relevant chapter README, the
[homework placement map](../../../README.md#homework-placement-map), and the
target shared statement and solution. Inspect the current review components
in [macros.tex](../../../macros.tex).

Use [homework-to-book-exercises](../homework-to-book-exercises/SKILL.md) for
new assignment identities, statement imports, placements, and handout setup.
Use [lecture-notes-to-book-chapter](../lecture-notes-to-book-chapter/SKILL.md)
for lecture exposition. The [editor](../editor/SKILL.md) can support clarity
and layout, with this skill's author-preservation approach governing supplied
homework proofs. Adding supplied solutions does not authorize solving other
questions.

## Establish what the author wrote

- Match every solution and subpart to its existing homework identity. Check
  the assignment hypotheses before interpreting the argument.
- Inspect every supplied page, including continuations and corrections.
  Preserve originals. Keep source-image copies in ignored images/ and
  inspection output in build/. Use the project's conversion script when
  requested, then view the converted pages at a legible size.
- Transcribe faithfully before making repairs. Retain the author's order,
  notation, first-person phrasing, intermediate calculations, and explanatory
  choices wherever they work. Reconstructing TeX from a scan does not recover
  the original TeX source.
- Record source page/question provenance in non-rendered comments. Inspect
  uncertain glyphs closely. Identify unresolved ambiguity instead of guessing
  a mathematically convenient line. Continue independent work on readable
  material while seeking clarification.

## Correct locally and preserve the argument

Review mathematical validity separately from style. Check the reasoning,
theorem hypotheses, quantifiers, signs, domains, indices, and whether limits
or objects used have been shown to exist.

Prefer the smallest repair that makes the author's argument valid and clear.
Correct a symbol, supply a bound, explain a theorem application, or insert a
missing step where needed. Keep valid surrounding sentences and working.
Correct local grammar and punctuation to project conventions without changing
the voice. Do not replace a valid proof because another proof is shorter,
more elegant, more conventional, or easier for the assistant to write.
Do not compress deliberate calculations into an unexplained assertion.
Preserve expanded terms before sigma notation when they build the author's
explanation. Handle short-index cases with a local truncation note rather
than replacing the expanded block with a more compact expression.

Preserve the strategy even when several linked steps require a longer
insertion. Explain the mathematical reason for a substantial amendment.
Never silently change the exercise's hypotheses or conclusion to rescue a
proof.

If repair requires a materially different proof, identify the first substantive
failure and retain valid work. Preserve the supplied original and record the
unresolved step in a source comment. Use a precise pending incompleteness
notice where needed so the reader-facing book does not assert that an invalid
argument proves the result. Present a proposed alternative separately for
review. Obtain the author's agreement before substituting a different strategy
unless they already requested that replacement. Routine local repairs do not
require an additional permission step.

## Make amendments reviewable

Use the shared pendingreview and \pendingreviewtext components only around
new or replaced passages awaiting review. Keep faithful transcription and
unchanged author text in their normal colour, preserving existing review
status. A small correction is not a reason to colour an entire proof.
Retain the original proof heading and conclusion when unchanged.
Remove review marks only after author approval.

Keep every necessary justification in the body. Optional reminders and
diagrams may go in the margin. Follow AGENTS.md for complete proof prose,
ordinary displayed conclusions, QED markers, automatic references, alphabetic
AMS citations, and TikZ diagrams. Add visual aids when requested or when they
clarify a specific obstacle, without replacing the author's reasoning.

## Update the shared solution

Edit the existing problems/hwNN/NN-topic/solution.tex once. Preserve its
first-line root directive pointing to ../../hwNN.tex, shared notation,
labels, and portable figure paths. Do not copy the proof into the chapter,
appendix, or handout, or change the statement to match a mistaken solution.

The main text retains its single shared problem input. The appendix repeats
the complete problem before the shared solution. The handout uses the same
pair in original assignment order. Preserve both navigation directions.
Use the assignment-import skill if missing shared structure needs creation.

Update the existing placement-map row's solution status and source record.
Distinguish supplied partial work, completed arguments awaiting review, and
author-approved solutions. A necessary unresolved step prevents calling a
solution complete. Transcription alone does not imply author approval.
Record durable editorial decisions in the relevant README changelog.

## Verify fidelity and correctness

Compare the final source against the supplied proof and inspect the diff.
Account for omitted or altered mathematical content. Each substantive change
should repair a demonstrated issue or fulfil the requested edit.
Read the result without margin notes to confirm completeness. Report remaining
gaps honestly.

After TeX edits, run make check from the repository root. It builds the book
and all handouts from both supported working directories. Inspect affected
book and handout pages, pending spans, equations, figures, citations, and
links. Reconcile the map and appendix if placement or identity changed.
Do not commit generated PDFs or auxiliaries.

Report which supplied solutions were incorporated, substantive repairs and
their reasons, unresolved issues, and validation results. Scale the report
to the edits. Distinguish retained author reasoning from editorial additions.
