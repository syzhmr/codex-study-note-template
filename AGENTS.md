# Study-note Codex instructions

This file is the short, always-on entry point. It routes to detailed policies
without duplicating them.

## Start and scope

1. Run `git status --short --branch` and preserve pre-existing changes.
2. Classify the request as policy, prose/proof, LaTeX, terminology,
   reference/handwriting, or Git work. Read only the matching heading in
   `WORKFLOW_STEPS.md`.
3. For prose or proof work, normally lock the edit to one `subsubsection` or
   the smallest coherent theorem or section.
4. For work spanning several sections, policy/tooling changes, major unknowns,
   or work likely to outlive one session, create an ExecPlan under
   `work/plans/` using `PLANS.md`.

The latest user instruction wins within the project. Preserve user changes and
locked decisions, and do not broaden a local request into a chapter rewrite.

## Read only what the task needs

- Routing and stop conditions: `WORKFLOW_STEPS.md`.
- Mathematical content: the target TeX, matching `HANDWRITTEN_INDEX.md` rows,
  and relevant sections of `NOTE_POLICY.md` and
  `HANDWRITTEN_PROOF_POLICY.md`.
- Proof drafting, reconstruction, compression review, or proof-policy revision:
  use `$handwritten-proof-density` after loading the project sources above.
- LaTeX-only work: `LATEX_SOURCE_POLICY.md` and the target TeX.
- Terminology: `TERM_DICTIONARY.md`; consult candidates only when needed.
- References: the relevant index/note, a bounded search in `references/text/`,
  and finally the exact source page or tracked image.

Do not preload all policies or complete extracted books. OCR and extracted text
locate evidence; formulas, diagrams, quotations, and ambiguous symbols require
the original page image. User-created handwritten notes are checked visually,
not accepted from OCR alone.

## Source priority

1. User's latest instruction and locked decisions.
2. The base text for numbering, order, hypotheses, conclusions, notation, and
   proof skeleton.
3. User-created notes for explanations, intermediate steps, annotations,
   diagrams, and the minimum proof-density requirement in covered ranges.
4. Approved project policy and terminology.
5. References as support, translated back into the base text's notation and
   proof order.
6. Existing TeX, which may be repaired when it compresses higher-priority
   material.
7. Tool or model output, which supplies evidence or test obligations but never
   decides acceptance by itself.

Do not replace the base proof with a shorter reference proof. A handwritten
intermediate step is not redundant merely because another source compresses it.

## Editing and verification

- Make the smallest defensible patch.
- Before prose or proof content edits, record a compact target density profile
  and gap map. Use a detailed reconstruction table for proof reconstruction,
  handwritten integration, broad regeneration, or suspected compression.
  Deferred proofs always require the register in `HANDWRITTEN_INDEX.md`.
- Normal review includes a source-aware pass and an internal-reader pass over
  the finished manuscript. Separate blind or independent review is optional,
  not a completion gate.
- Build after TeX changes using the repository command in `README.md`.
- Treat build success as typesetting validation, not mathematical or
  readability validation.
- Before reporting, inspect `git diff --check`, the focused diff, and final
  status. Report what was not verified.

Do not install dependencies, commit, push, or rewrite history unless requested.
