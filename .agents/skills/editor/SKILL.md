---
name: editor
description: Write, rewrite, polish, and review content for this mathematics textbook with clear English, complete reasoning, intuitive explanations, coherent progression, and consistent presentation. Apply when drafting textbook prose from raw notes, explaining or improving proofs and examples, organizing topics and exercises, or refining diagrams, margin notes, summaries, and formula sheets. Use alongside import skills when shaping supplied material into book content. Not for unrelated programming, Git, or build-only tasks.
---

# Editor

Act as the book's chief editor. Turn raw mathematical content into a textbook
that a reader outside the class can understand. **Choose clarity over brevity.**
Explain what makes an argument work without padding it with repetition.

Apply this editorial standard during relevant book-writing work, even when
the user does not request a separate editing pass. Use it alongside the
lecture and homework import skills when those workflows apply, preserving
their source-fidelity and shared-exercise requirements.

Read [AGENTS.md](../../../AGENTS.md) and the relevant chapter README before
editing. They hold the detailed conventions and reasons for earlier decisions.
Work within the requested scope. An editorial pass does not authorize a new
chapter, an assignment import, or invented solutions.

## Write the reasoning in full

For supplied homework proofs, use
[homework-solutions-to-book](../homework-solutions-to-book/SKILL.md).
Preserve the author's strategy, tone, notation, and valid working. Apply the
clarity standard through focused repairs instead of default proof replacement.

- Use complete sentences and connected paragraphs. Avoid semicolons. Do not
  use colons in proof prose. Let equations participate in grammatical sentences.
- Define notation, state hypotheses, and explain why a theorem applies. Spell
  out the bridge between steps instead of compressing it into “clearly,”
  “similarly,” or a chain of implications that hides the argument.
- Make choices and dependencies visible. Explain what is arbitrary, what is
  being chosen, what a bound controls, and why the conclusion follows. In limit
  arguments, distinguish existence, computation, and uniqueness of the limit.
- Keep every essential justification in the body. A proof must remain complete
  when the reader ignores the margin. Finish by stating the conclusion in words
  or an ordinary display, using the proof environment's QED marker, without boxes.

For example, “By density and continuity, $f(x)=ax$” hides the central step.
Explain that an arbitrary real $x$ is approached by rationals $q_n$, that
continuity gives $f(q_n)\to f(x)$, and that the established rational identity
gives $f(q_n)=aq_n\to ax$. Uniqueness of limits then gives $f(x)=ax$.
Include the necessary working rather than merely naming the tools.

## Build intuition without weakening the mathematics

Explain the mechanism and its purpose, then connect it to the formal statement.
A concrete construction can develop the idea before introducing its name.
Use worked examples, counterexamples, or diagrams when they resolve a real
obstacle to understanding. A special example must not masquerade as a general
proof. Explain unfamiliar words such as “reversible” in mathematical terms.

State frequently invoked tools explicitly at their natural home. Readers
should not have to reconstruct Euclid's lemma from repeated references to it.
Check hypotheses and exceptions even in intuitive summaries. Distinguish set
containment from cardinality, assumptions from conclusions, and illustrations
from proofs. Correct mathematical errors rather than polishing them into
confident prose. Preserve uncertainty and omitted-proof status when unresolved.

## Make the book flow

Preserve syllabus chapter and section order. Within that framework, introduce
prerequisites before substantial use and place exercises beside the content
needed for all their subparts. Explain deliberate forward references. Connect
adjacent sections through their mathematical relationship rather than leaving
isolated summaries. Keep summaries, assumed knowledge, and formula sheets in
the same topic order. Reuse existing shared exercises and synchronize placement
records when moving them.

Write for an independent reader. Keep lecture numbers, classroom references,
handwritten-source provenance, and import progress in internal records. Preserve
the supplied mathematics and distinguish editorial additions from source content.

## Give the margin a purpose

Use the margin for optional intuition, compact visual guides, and historical
context near the relevant passage. History should explain the motivating
problem, attribution, terminology, or mathematical impact. Verify claims against
retrievable primary evidence. Do not infer discovery from a theorem's name or
repeat colourful anecdotes as fact. Use the shared historical-note components
and record evidence limits as required by AGENTS.md.

Design mathematical diagrams in TikZ using the shared black and gray styles.
Related diagrams should look related. Match labels to the distances actually
shown, distinguish full widths from radii, and preserve endpoints and domains.
Keep annotations sparse and labels readable. Give crowded content more room
rather than shrinking text or forcing it into the margin. Every figure needs
a caption, stable label, and nearby body reference.

## Preserve consistency and author review

Use shared environments and notation, linked `\autoref` references, and the
alphabetic AMS citation style. Generate citation labels from bibliography
metadata. Mark only new or replaced passages awaiting approval with the shared
pending-review components. Preserve approved text and existing review status.
Remove wrappers only when the author approves them.

Before finishing a book edit, read the passage as continuous mathematics,
check its correctness separately, run the required builds, and inspect affected
pages at printed size. Review the whole page for margin alignment, crowded
captions, touching labels, and overflow. A successful compile is not an
editorial or visual review.
