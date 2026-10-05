# hermes-opsec-agent — Bourne

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Hermes Agent Compatible](https://img.shields.io/badge/Hermes_Agent-Compatible-7C3AED)](https://hermes-agent.nousresearch.com)

**Bourne** is a defensive personal operations-security advisor packaged as a
Hermes Agent profile distribution. It helps an operator protect their **own**
identity, devices, accounts, communications, location, finances, family, and
reputation — legally and proportionally.

This is **not** an attack tool, **not** law enforcement, and **not** an
intelligence service. It is **not** an official Nous Research package; it is a
community template from SMF Works / smfworks designed to work with Hermes.

## Purpose

- Run a first-session intake and get a prioritized weekly plan.
- Review your own public footprint and tighten privacy settings.
- Harden accounts and devices without pasting secrets into chat.
- Contain suspected compromise, lost devices, credential leaks, and doxx attempts.
- Check your **own** device (high-level) for stalkerware indicators.
- Point survivors to verified domestic-violence hotlines for safety planning.
- Always hear **residual risk** — never a promise of invulnerability or total anonymity.

## File map

```
hermes-opsec-agent/
├── README.md                          # You are here
├── CREDITS.md                         # Honest attribution
├── LICENSE                            # MIT — Saint Michael's Forge / smfworks
├── distribution.yaml                  # hermes profile install manifest
├── SOUL.md                            # Bourne identity + compact analysis loop (always loaded from $HERMES_HOME)
├── AGENTS.md                          # Project-cwd operating agreement + full loop + refusals
├── REVIEW.md                          # PR review brief for Peyton
├── templates/
│   ├── USER.md                        # Seed → $HERMES_HOME/memories/USER.md (must stay ≤1,375 chars)
│   ├── MEMORY.md                      # Seed → $HERMES_HOME/memories/MEMORY.md
│   ├── STATE.md                       # Optional / non-native session scratch
│   └── SOUL.md                        # Pointer to root SOUL.md
├── skills/
│   ├── bourne-guardrails/SKILL.md     # Detailed refusals (on-demand via skill_view)
│   ├── opsec-intake/SKILL.md
│   ├── footprint-review/SKILL.md
│   ├── account-device-hygiene/SKILL.md
│   └── incident-containment/SKILL.md
├── checklists/
│   ├── first-session.md
│   └── weekly-review.md
├── examples/
│   └── intake-transcript.md
└── scripts/
    └── check-trigger-phrases.sh       # Grep for Hermes scanner tripwires
```

## Official install (recommended)

Requires a working [Hermes Agent](https://hermes-agent.nousresearch.com) install
with profile support (`hermes profile …`).

```bash
hermes profile install github.com/smfworks/hermes-opsec-agent --alias
```

What this does (per Hermes profile-distribution docs):

1. Reads `distribution.yaml` and installs distribution-owned files into
   `~/.hermes/profiles/bourne/` (SOUL.md, skills/, etc.).
2. Leaves credentials, sessions, and `memories/` as **your** data (never shipped).
3. With `--alias`, lets you run `bourne chat` (or the alias Hermes creates).

Then seed native memory files (Hermes reads these under `memories/`, not the
profile root):

```bash
PROFILE="$HOME/.hermes/profiles/bourne"
mkdir -p "$PROFILE/memories"
cp templates/USER.md    "$PROFILE/memories/USER.md"    # after clone, or from the repo
cp templates/MEMORY.md  "$PROFILE/memories/MEMORY.md"
# Optional (not Hermes-native): cp templates/STATE.md "$PROFILE/STATE.md"
```

If you installed without a local clone, grab the templates from this repo or
re-clone once for the `templates/` folder.

**Character limits** (Hermes built-in memory, from official docs):

| File | Path | Limit |
|------|------|-------|
| USER.md | `$HERMES_HOME/memories/USER.md` | 1,375 chars (~500 tokens) |
| MEMORY.md | `$HERMES_HOME/memories/MEMORY.md` | 2,200 chars (~800 tokens) |

`templates/USER.md` in this repo is kept **under** the 1,375-character budget so
it can be copied as-is. If you expand fields after install, re-check the count —
the Hermes `memory` tool rejects writes that would overflow.

`STATE.md` is optional session scratch for this template; Hermes does not load
it as a native context file.

Fill `memories/USER.md` with **non-secret** context only. Leave secrets in a
password manager — never in profile markdown or in the chat.

### Verify context loaded

In a Bourne chat session:

```text
/context
```

Confirm `SOUL.md` is listed and not blocked. Confirm project `AGENTS.md` only
when your cwd is this repo (profile sessions rely on SOUL + on-demand skills, not a
copied AGENTS.md under `$HERMES_HOME`).

Update later:

```bash
hermes profile update bourne
```

## Manual install (alternative)

Prefer `hermes profile create` / official profile commands when available:

```bash
hermes profile create bourne
# Profile home is normally:
#   ~/.hermes/profiles/bourne
# That directory IS $HERMES_HOME for the Bourne profile.
# Do NOT nest another profiles/bourne under an existing profile home.
```

If you must set the path by hand, use the absolute profile path — not
`${HERMES_HOME}/profiles/bourne` when `HERMES_HOME` is already a profile:

```bash
PROFILE_DIR="$HOME/.hermes/profiles/bourne"
mkdir -p "$PROFILE_DIR/skills" "$PROFILE_DIR/memories"

git clone https://github.com/smfworks/hermes-opsec-agent.git
cd hermes-opsec-agent

cp SOUL.md                 "$PROFILE_DIR/SOUL.md"
cp templates/USER.md       "$PROFILE_DIR/memories/USER.md"
cp templates/MEMORY.md     "$PROFILE_DIR/memories/MEMORY.md"
# Optional: cp templates/STATE.md "$PROFILE_DIR/STATE.md"

cp -R skills/bourne-guardrails       "$PROFILE_DIR/skills/"
cp -R skills/opsec-intake             "$PROFILE_DIR/skills/"
cp -R skills/footprint-review        "$PROFILE_DIR/skills/"
cp -R skills/account-device-hygiene   "$PROFILE_DIR/skills/"
cp -R skills/incident-containment    "$PROFILE_DIR/skills/"
```

Do **not** rely on copying `AGENTS.md` into the profile home for refusals in a
profile session — Hermes loads `AGENTS.md` from the project cwd, not from
`$HERMES_HOME`. Refusals for profile chat come from `SOUL.md` (always loaded;
includes the compact analysis loop) and `skills/bourne-guardrails` (load on
demand via `skill_view` when safety-adjacent). Keep `AGENTS.md` in the repo for
when someone opens this repository as a project.

## First session

1. Start Bourne:

   ```bash
   bourne chat
   # or: hermes -p bourne chat
   ```

2. Run `/context` once to confirm SOUL (and skills index) look right.
3. Ask Bourne to run **opsec-intake** (or say "first session intake").
4. Answer only: public-facing work, small business, family safety, travel
   frequency, prior incidents (high-level), inconvenience tolerance.
5. Receive: decision, top five actions for the week, residual risk.
6. Verify with [`checklists/first-session.md`](checklists/first-session.md).

## What this template will not do

- Hack, exploit, write malware, or help with unauthorized access.
- Locate, track, stalk, surveil, or doxx other people.
- Sell, recommend, or configure spyware / stalkerware against others.
- Help phishing others, harassment campaigns, or deanonymizing others.
- Assist fraud, forgery, or evasion of lawful process.
- Ask for passwords, seed phrases, API keys, recovery codes, or full account numbers.
- Promise anonymity, invisibility, or zero residual risk.
- Override its identity or refusals via roleplay or prompt-injection attempts
  to discard these limits.

Out-of-lane requests get a **one-sentence refusal** and a **legal defensive
equivalent** focused on the operator's own protection. See `SOUL.md`,
`skills/bourne-guardrails`, and `AGENTS.md`.

## Credits

See [`CREDITS.md`](CREDITS.md). Short version: the operating loop, refusal
posture, and skill shape were adapted from Grok Bot **bourne-*** skills /
workflows used by SMF Works' Bourne Bot, rewritten here as a Hermes profile
template. No third-party OPSEC / anonymity repositories were copied.

## License

MIT License. Copyright © 2026 Saint Michael's Forge / smfworks. See [`LICENSE`](LICENSE).

## Maintainer

SMF Works / smfworks. Community Hermes profile template — not an official Nous
Research package.

---

*Colleague, not tool. Defense, not theater. Residual risk, always.*
