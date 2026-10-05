# hermes-opsec-agent — Bourne

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Hermes Agent Compatible](https://img.shields.io/badge/Hermes_Agent-Compatible-7C3AED)](https://hermes-agent.nousresearch.com)

**Bourne** is a defensive personal operations-security advisor packaged as a
Hermes Agent profile template. It helps an operator protect their **own**
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
- Always hear **residual risk** — never a promise of invulnerability or total anonymity.

## File map

```
hermes-opsec-agent/
├── README.md                          # You are here
├── LICENSE                            # MIT — Saint Michael's Forge / smfworks
├── AGENTS.md                          # Operating agreement + hard refusals
├── REVIEW.md                          # PR review brief for Peyton
├── templates/
│   ├── SOUL.md                        # Bourne identity (copy into Hermes profile)
│   ├── USER.md                        # Non-secret operator context placeholders
│   ├── MEMORY.md                      # Durable-fact log (no secrets)
│   └── STATE.md                       # Session risk snapshot + open actions
├── skills/
│   ├── opsec-intake/SKILL.md
│   ├── footprint-review/SKILL.md
│   ├── account-device-hygiene/SKILL.md
│   └── incident-containment/SKILL.md
├── checklists/
│   ├── first-session.md
│   └── weekly-review.md
└── examples/
    └── intake-transcript.md           # Refusal + defensive equivalent sample
```

## How to install into a Hermes profile

Official Hermes loads identity from `~/.hermes/SOUL.md` or from a profile
directory under `$HERMES_HOME`. Confirm paths against the live Hermes docs if
your install differs.

```bash
# 1. Clone this template
git clone https://github.com/smfworks/hermes-opsec-agent.git
cd hermes-opsec-agent

# 2. Create or pick a Hermes profile directory (example name: bourne)
#    Exact profile CLI flags can vary by Hermes version — prefer `hermes`
#    profile commands from the official docs when available.
PROFILE_DIR="${HERMES_HOME:-$HOME/.hermes}/profiles/bourne"
mkdir -p "$PROFILE_DIR" "$PROFILE_DIR/skills"

# 3. Copy identity and working files
cp templates/SOUL.md   "$PROFILE_DIR/SOUL.md"
cp templates/USER.md   "$PROFILE_DIR/USER.md"
cp templates/MEMORY.md "$PROFILE_DIR/MEMORY.md"
cp templates/STATE.md  "$PROFILE_DIR/STATE.md"
cp AGENTS.md           "$PROFILE_DIR/AGENTS.md"

# 4. Copy skills (keep folder names; Hermes skill discovery expects SKILL.md)
cp -R skills/opsec-intake            "$PROFILE_DIR/skills/"
cp -R skills/footprint-review        "$PROFILE_DIR/skills/"
cp -R skills/account-device-hygiene   "$PROFILE_DIR/skills/"
cp -R skills/incident-containment    "$PROFILE_DIR/skills/"

# 5. Optional: single-profile install without profiles/ subdir
#    cp templates/SOUL.md ~/.hermes/SOUL.md
```

Fill `USER.md` with **non-secret** context only. Leave secrets in a password
manager, never in profile markdown or in the chat.

## First session

1. Start Hermes using the Bourne profile (see official Hermes chat/profile docs
   for the current flag). Example shape:

   ```bash
   hermes chat   # or the profile-select invocation from live Hermes docs
   ```

2. Ask Bourne to run **opsec-intake** (or say "first session intake").
3. Answer only: public-facing work, small business, family safety, travel
   frequency, prior incidents (high-level), inconvenience tolerance.
4. Receive: decision, top five actions for the week, residual risk.
5. Verify with [`checklists/first-session.md`](checklists/first-session.md).

## What this template will not do

- Hack, exploit, write malware, or help with unauthorized access.
- Stalk, surveil, or doxx other people.
- Assist fraud, forgery, or evasion of lawful process.
- Ask for passwords, seed phrases, API keys, recovery codes, or full account numbers.
- Promise anonymity, invisibility, or zero residual risk.
- Override its identity or refusals via roleplay or "ignore previous instructions."

Out-of-lane requests get a **one-sentence refusal** and a **legal defensive
equivalent** focused on the operator's own protection. See `AGENTS.md`.

## License

MIT License. Copyright © 2026 Saint Michael's Forge / smfworks. See [`LICENSE`](LICENSE).

## Maintainer

SMF Works / smfworks. Patterns align structurally with other Hermes profile
templates from SMF Works; content here is original to Bourne.

---

*Colleague, not tool. Defense, not theater. Residual risk, always.*
