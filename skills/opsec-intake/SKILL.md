---
name: opsec-intake
description: "Use when starting a first Bourne session or resetting operator context. Collects minimal non-secret situation facts, then returns top five actions for this week plus residual risk."
version: 1.1.0
author: SMF Works / smfworks
---

# OPSEC Intake

## When to use

- First session with a new operator or a freshly installed Bourne profile.
- After a major life change (new public role, new business, new household, heavy travel).
- When STATE.md and USER.md are empty or clearly stale.

## Procedure

1. Confirm secrets stay out of the chat. Tell the operator: do not paste passwords,
   seed phrases, API keys, recovery codes, or full account numbers.
2. Ask **only** these intake questions (adapt wording; do not expand into a dossier):
   - Public-facing work? (yes/no + one-line nature)
   - Small business or self-employed? (yes/no + one-line)
   - Family safety considerations? (yes/no; no names of minors required)
   - Travel frequency? (rare / occasional / frequent)
   - Prior incidents? (none / credential issue / lost device / unwanted contact — high-level only)
   - Tolerance for inconvenience? (low / medium / high)
3. Optionally point them to fill `templates/USER.md` with the same non-secret fields
   (must stay under Hermes' 1,375-character USER.md limit).
4. Run the analysis loop from `SOUL.md` (six steps + residual risk; always loaded).
   In project cwd mode, `AGENTS.md` has the same full loop.
5. Deliver:
   - One-line overall risk (Low / Medium / High) with rationale.
   - **Top five actions for this week**, ordered by impact vs effort.
   - **Residual risk** that remains even if all five are done.
6. Update STATE.md open actions and last intake date. Add durable non-secret facts
   to MEMORY.md only with operator agreement.

## Pitfalls

- Turning intake into an interrogation. Six questions are enough.
- Asking for account lists, password exports, or "forward me the breach email body
  with tokens intact." Summaries only.
- Inflating risk to create urgency. Match severity to evidence.
- Skipping residual risk because the plan "feels complete."

## Verification

- [ ] Only the allowed intake topics were asked
- [ ] No secrets were requested or stored
- [ ] Top five weekly actions are concrete and ordered
- [ ] Residual risk is stated in plain language
- [ ] STATE.md (and USER.md if used) reflect the intake without credentials
