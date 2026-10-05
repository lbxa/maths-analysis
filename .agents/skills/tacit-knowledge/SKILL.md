---
name: tacit-knowledge
description: Capture durable mathematical, editorial, and organisational decisions revealed while discussing, writing, or reviewing this LaTeX book. Record their rationale and constraints in the Changelog of the relevant chapter README, or the root README for book-wide decisions.
---

# Capture Tacit Knowledge

## Overview

Preserve durable book memory in the relevant chapter README changelog. Prefer short, decision-centered notes that explain what future agents need to know and why the decision was made. Discuss scope in terms of chapters, sections, appendices, and the book as a whole.

## Capture Criteria

Capture knowledge when it is durable, relevant to the book, and unlikely to be obvious from the LaTeX source alone:

- A discussion or review settles chapter order, prerequisite dependencies, a proof approach, or the intended level of detail.
- A follow-up answer clarifies the author's intent, notation, course scope, or treatment of examples and exercises.
- A mathematical assumption, deliberate forward reference, rejected proof, or deferred topic needs a rationale to prevent later confusion.
- A LaTeX layout workaround, shared exercise rule, or diagram convention would otherwise need to be rediscovered.
- The reason for an editorial or structural change matters as much as the source diff.

Do not capture transient build status, obvious source edits, generic advice, tentative suggestions, or unverified mathematical claims. Record agreed decisions, not every option raised in discussion.

## Workflow

1. Identify the affected chapters from the topic files and discussion scope. Use the explicit chapter and part input lists to establish where material belongs.
2. Find each affected chapter's `README.md`, beside its `chapter.tex`. Create it only when a durable chapter-specific decision needs recording. For appendix-specific knowledge, use `sections/appendices/README.md`; for book-wide knowledge, use the root `README.md`.
3. Add or update a `## Changelog` section in that README.
4. Add a dated entry using the current local date. Keep entries newest-first unless the README already uses another changelog order.
5. Write concise bullets that include the decision and the reason. Name the mathematical or editorial concept, not the conversational path that led to it. Update an existing same-day entry when appropriate rather than adding repeated notes.

Keep this capture within the authorised task scope. A discussion-only review does not itself authorise README edits. When recording knowledge is authorised, preserve surrounding content and keep the change local.

Use this format when the README has no existing changelog convention:

```markdown
## Changelog

### YYYY-MM-DD

- Captured decision: reason future agents should preserve it.
```

## Chapter Selection

Map knowledge to the narrowest chapter or book area that owns it:

- Chapter-specific mathematical and editorial decisions belong in `sections/analysis-i/<chapter>/README.md`, or the corresponding Analysis II chapter when active.
- Decisions about solution presentation across chapters belong in `sections/appendices/README.md`.
- Decisions about the whole book, shared notation, build conventions, or ordering between chapters belong in the root `README.md`.
- When several chapters are affected, write separate chapter-specific bullets only when each chapter needs distinct guidance. Record a shared rationale once at book level and link to it where useful.

Keep existing authoritative guidance in place. The homework placement map in the root README remains the record of exercise inclusion and order; `AGENTS.md` remains the style and contributor guide. Changelog entries explain durable decisions and rationale without duplicating those rules or replacing required map updates.

## Writing Standard

Make entries useful to a future agent:

- State the durable decision first.
- Include the reason, constraint, or tradeoff in the same bullet.
- Prefer concrete names, such as chapter titles, stable theorem or section labels, hypotheses, shared exercise paths, and LaTeX environments.
- Keep each bullet one or two sentences.
- If the captured knowledge came from the user, phrase it as project fact after applying judgment; do not quote casual conversation unless exact wording matters.

Avoid vague bullets such as:

- "Updated the notes."
- "Discussed tradeoffs."
- "Improve chapter flow."

Prefer bullets such as:

- "The Archimedean property is proved directly from the least upper bound property before the completeness equivalences, because those proofs use it and must avoid circular reasoning."
- "The Newton iteration keeps its geometric motivation near the first discussion of sequences, while the convergence proof follows the required root-existence and monotone-convergence results."

These are examples of entry style, not instructions to reorder the current book.
