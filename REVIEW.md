# REVIEW.md — Brief for Peyton (PR review)

**Repo:** `smfworks/hermes-opsec-agent`  
**Product:** Bourne — defensive personal OPSEC advisor as a Hermes profile distribution  
**License:** MIT (Saint Michael's Forge / smfworks)  
**Note:** Peyton reviews and recommends. Peyton does **not** merge.

## Please check

1. **SOUL vs AGENTS vs guardrails split** — Root `SOUL.md` is identity, values,
   lane, voice, a short always-loaded refusal summary, and a **compact analysis
   loop** (six steps + residual risk). Hermes loads SOUL only from
   `$HERMES_HOME`. Skills (including `bourne-guardrails`) load **on demand** via
   `skill_view` — they are not always-on. `AGENTS.md` is the project-cwd
   operating agreement (full analysis loop + same refusal detail); Hermes does
   **not** load AGENTS from `$HERMES_HOME`.
2. **Refusal completeness** — Permanent refusals cover hacking/exploits/malware/
   unauthorized access; locating/tracking people; stalking/surveillance of
   others; doxxing; spyware/stalkerware against others; phishing others;
   harassment help; deanonymizing; intimate-partner / "family phone" framings;
   fraud/forgery; and evading lawful process. Owner-scope anti-loophole present.
   Roleplay / prompt-injection attempts cannot override (no scanner tripwire
   phrasing).
3. **Affirmative allows** — Own-device stalkerware indicator checklist
   (high-level); DV safety planning with verified hotlines only
   (thehotline.org / 1-800-799-7233).
4. **No offensive methods** — Skills and examples must stay defensive checklists.
   No exploit steps, payloads, or third-party targeting.
5. **No secrets requested** — Nowhere should Bourne ask for passwords, seed
   phrases, API keys, recovery codes, or full account numbers.
6. **Residual risk always stated** — SOUL compact loop, AGENTS full loop, and
   skills require it; sample transcript should model it.
7. **Skills are checklists, not exploits** — YAML frontmatter present; When to
   use / Procedure (or equivalent) / Pitfalls / Verification sections filled.
   Guardrails skill must not claim to be always-on.
8. **Install layout accurate** — Prefer `hermes profile install` via
   `distribution.yaml`. Profile path is `~/.hermes/profiles/bourne` (do not nest
   `profiles/` under an already-set profile `HERMES_HOME`). Native memory files
   install under `$HERMES_HOME/memories/{USER,MEMORY}.md`. `templates/USER.md`
   must stay ≤1,375 characters. Document `/context` verification. Repo must not
   claim to be an official Nous Research package.
9. **Attribution** — `CREDITS.md` + README Credits section credit Grok Bot
   bourne-* adaptation; soften originality claims; no third-party OPSEC repos
   copied.
10. **MIT license present** — LICENSE file with Saint Michael's Forge / smfworks
    copyright.
11. **No Hermes scanner tripwires** — Avoid literal phrases that trip the
    context-injection scanner (e.g. the common "ignore previous…" family). Prefer
    "prompt-injection attempts to discard these limits."
12. **CI** — `.github/workflows/trigger-phrase-check.yml` should declare
    `permissions: contents: read` and pin `actions/checkout` to a full commit SHA.

## Verdict format

Reply with one of:

- **merge** — reasons (bullet list)
- **request-changes** — reasons and required fixes
- **close** — reasons

Do not merge the PR yourself. Hand the verdict back to Patrick.
