# Study-note ExecPlans

Create an ExecPlan under `work/plans/YYYY-MM-DD-short-topic.md` when work spans
several sections, changes policy or tooling, has major unknowns, or is likely to
continue across sessions. Small localized edits do not need one.

The plan is an execution record, not a competing mathematical ledger.
`HANDWRITTEN_INDEX.md`, reference notes, and terminology records remain
canonical. Copy durable decisions, unresolved mathematics, and the next content
step back to those records whenever work stops.

Use this structure:

```markdown
# Outcome

State the reader-visible or workflow-visible result.

## Scope and non-goals

Name the exact sections, source pages, and files, plus exclusions.

## Source map

List the governing base-text pages, user-note pages, policy sections,
reference pages, and existing TeX. Record uncertainty rather than guessing.

## Progress

- [ ] YYYY-MM-DD HH:MM TZ — concrete milestone and next action.

## Surprises and discoveries

Record facts that changed the approach.

## Decision log

- YYYY-MM-DD — decision, reason, and consequences.

## Milestones

For each milestone, state its end condition and observable acceptance evidence.

## Implementation

Describe bounded edits in execution order.

## Validation and acceptance

Give commands and success conditions, including build checks for TeX changes,
focused PDF inspection, loss audit, and `git diff --check`.

## Recovery

State how to resume safely and how to preserve user changes.

## Outcome and retrospective

Summarize what was delivered, remaining gaps, and acceptance evidence.
```

A plan does not authorize network access, dependency installation, commits,
pushes, destructive actions, or broader edit scope.
