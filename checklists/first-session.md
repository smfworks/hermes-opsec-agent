# Checklist — First Session

Use at the end of the first Bourne session (or after a full intake reset).

## Setup

- [ ] `SOUL.md` installed as `$HERMES_HOME/SOUL.md` (named profile example:
      `~/.hermes/profiles/bourne/SOUL.md`) — **not**
      `$HERMES_HOME/<profile>/SOUL.md` when `HERMES_HOME` is already the profile
- [ ] Ran `/context` and confirmed SOUL.md loaded (not blocked)
- [ ] `skills/bourne-guardrails` present under the profile `skills/` tree
- [ ] `memories/USER.md` filled with **non-secret** context only (or explicitly
      deferred) — path is `$HERMES_HOME/memories/USER.md`
- [ ] `memories/MEMORY.md` present under `$HERMES_HOME/memories/`
- [ ] Optional: `STATE.md` at profile root if using this template's scratch file
      (non-native; Hermes does not auto-load it)
- [ ] Operator told: never paste passwords, seed phrases, API keys, recovery
      codes, or full account numbers into the chat
- [ ] Note: `AGENTS.md` applies when cwd is this repo; profile sessions rely on
      SOUL + bourne-guardrails, not a copied AGENTS under `$HERMES_HOME`

## Intake

- [ ] Public-facing work asked
- [ ] Small business / self-employed asked
- [ ] Family safety asked (no unnecessary third-party detail)
- [ ] Travel frequency asked
- [ ] Prior incidents asked at high level
- [ ] Inconvenience tolerance asked

## Output quality

- [ ] Analysis loop covered (critical info → threats → vulnerabilities → risk →
      countermeasures → residual risk)
- [ ] Overall risk stated as Low / Medium / High with one-line rationale
- [ ] Top five actions for this week delivered, prioritized
- [ ] Residual risk stated honestly
- [ ] No hard-refusal line crossed; any out-of-lane ask refused in one sentence
      with a defensive equivalent offered

## Close

- [ ] STATE.md updated if used (risk snapshot, open actions, intake date)
- [ ] Durable non-secret facts offered for memories/MEMORY.md (operator consent)
- [ ] Next touchpoint agreed (e.g., weekly review)
