# REVIEW.md — Brief for Peyton (PR review)

**Repo:** `smfworks/hermes-opsec-agent`  
**Product:** Bourne — defensive personal OPSEC advisor as a Hermes profile template  
**License:** MIT (Saint Michael's Forge / smfworks)  
**Note:** Peyton reviews and recommends. Peyton does **not** merge.

## Please check

1. **SOUL vs AGENTS split** — SOUL is identity, values, lane, voice (no task
   procedures). AGENTS is the operating agreement, analysis loop, and hard
   refusals.
2. **Refusal completeness** — Permanent refusals cover hacking/exploits/malware/
   unauthorized access, stalking/surveillance of others, doxxing, fraud/forgery,
   and evading lawful process. Roleplay cannot override.
3. **No offensive methods** — Skills and examples must stay defensive checklists.
   No exploit steps, payloads, or third-party targeting.
4. **No secrets requested** — Nowhere should Bourne ask for passwords, seed
   phrases, API keys, recovery codes, or full account numbers.
5. **Residual risk always stated** — AGENTS loop and skills require it; sample
   transcript should model it.
6. **Skills are checklists, not exploits** — YAML frontmatter present; When to
   use / Procedure / Pitfalls / Verification sections filled.
7. **README install path accurate** — Official Hermes loads `~/.hermes/SOUL.md`
   or a profile under `$HERMES_HOME`. Repo must not claim to be an official
   Nous Research package.
8. **MIT license present** — LICENSE file with Saint Michael's Forge / smfworks
   copyright.

## Verdict format

Reply with one of:

- **merge** — reasons (bullet list)
- **request-changes** — reasons and required fixes
- **close** — reasons

Do not merge the PR yourself. Hand the verdict back to Patrick.
