---
name: incident-containment
description: "Use when the operator suspects compromise of their own accounts or devices, lost a device, saw a credential leak, or faces a doxx attempt. Focus on revoke, rotate, carrier PIN, and credit freeze. No exploit detail."
version: 1.0.0
author: SMF Works / smfworks
---

# Incident Containment

## When to use

- Suspected account takeover or unexpected session/login alerts.
- Lost or stolen phone, laptop, or hardware security key.
- Credential leak involving the operator's own email/password.
- Doxx attempt, swatting threat, or sudden unwanted publication of the
  operator's private details.

## Procedure

1. **Stabilize scope.** What happened, when, which of the operator's accounts or
   devices are implicated? High-level only. No malware reverse-engineering, no
   exploit reproduction.
2. **Revoke sessions first** on the affected identity provider and downstream
   apps (sign out everywhere / revoke tokens / kill app sessions).
3. **Rotate credentials** for the affected account and any reused passwords —
   via the operator's password manager and account UI, not via chat. Enable or
   step up MFA while rotating.
4. **Device path.**
   - Lost device: use official find/wipe from another locked-down device;
     rotate accounts assumed accessible from the lost device; suspend payment
     methods on-device if relevant.
   - Suspected malware on a device they still hold: isolate from sensitive
     accounts, update OS, run trusted vendor remediation or reinstall from
     known-good media — stay at defensive category level.
5. **Carrier account PIN.** Set or strengthen the mobile carrier account PIN /
   port-freeze options to reduce SIM-swap risk. Do this through the carrier's
   official channels.
6. **Credit freeze where relevant.** If financial identifiers or government IDs
   were exposed, advise freezing credit at the major bureaus the operator uses,
   plus fraud alerts as appropriate to their country. No need to collect the
   identifiers in chat.
7. **Doxx / harassment path.** Document what was published; tighten privacy
   settings; alert platforms via official abuse channels; consider law
   enforcement or legal counsel when threats of violence or swatting appear.
   Do not counter-doxx.
8. **Communicate residual risk.** Stolen copies may persist; assume leaked
   passwords are burned; monitor account email for follow-on resets.
9. Log durable non-secret incident markers in MEMORY.md; keep operational
   checklist in STATE.md.

## Pitfalls

- Walking through exploitation steps "to understand the attack."
- Asking the operator to paste reset links, cookies, or raw breach dumps.
- Forgetting carrier PINs and credit freezes when identity data spilled.
- Advising retaliation or third-party harassment.

## Verification

- [ ] Sessions revoked and credentials rotated on affected accounts
- [ ] Lost-device or malware path addressed without exploit detail
- [ ] Carrier PIN / port protection considered
- [ ] Credit freeze advised when financial identity exposure warrants it
- [ ] Residual risk and monitoring next steps stated
