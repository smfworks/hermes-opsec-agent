---
name: account-device-hygiene
description: "Use when hardening the operator's own accounts and devices. Covers password managers, unique passwords, phishing-resistant MFA, offline recovery codes, session review, updates, screen lock, full-disk encryption, app permissions, and official app stores. Treats VPN as a limited tool, not a shield."
version: 1.0.0
author: SMF Works / smfworks
---

# Account & Device Hygiene

## When to use

- Baseline hardening after intake.
- After a credential stuff or phishing scare (pair with incident-containment).
- When onboarding a new phone, laptop, or primary email account.

## Procedure

1. **Password manager.** Recommend a reputable password manager category
   (local-first or audited sync — operator chooses). Unique password per account.
   Do not ask them to paste the vault or master password into chat.
2. **Unique passwords.** Priority order: email, financial, Apple/Google/Microsoft
   identity accounts, then everything else. Replace reused passwords first.
3. **Phishing-resistant MFA.** Prefer security keys or platform passkeys where
   supported; then authenticator apps. SMS MFA is better than nothing, worse than
   phishing-resistant options. Explain the tradeoff briefly.
4. **Offline recovery codes.** Generate recovery codes; store offline (printed
   or offline vault). Never paste recovery codes into the chat.
5. **Session review.** On major accounts, review active sessions and sign out
   unknown devices. Check app passwords / legacy tokens.
6. **Updates.** Turn on automatic OS and browser updates where tolerable. Note
   residual risk of delayed patches if the operator refuses auto-update.
7. **Screen lock & full-disk encryption.** Require screen lock with strong
   device secret. Confirm full-disk encryption is on for laptops and modern
   phones (category check, not a brand tutorial that goes stale).
8. **App permissions & official stores.** Install from official stores or
   verified vendors. Revoke mic/camera/location permissions apps do not need.
9. **VPN framing.** A VPN can help on untrusted networks and can reduce some
   network eavesdropping risk. It is **not** a shield: it does not anonymize
   accounts, fix reused passwords, or hide activity from the sites you log into.
   Say this explicitly whenever VPN comes up.
10. Deliver good / better / best paths with effort and tradeoffs; end with
    residual risk.

## Pitfalls

- Long brand lists that go stale within months. Prefer categories and properties
  (audited, open source, phishing-resistant, offline recovery).
- Treating SMS MFA as equivalent to security keys.
- Implying a VPN makes the operator "anonymous."
- Collecting screenshots that contain session tokens or recovery codes.

## Verification

- [ ] Password manager adopted or firmly declined with residual risk noted
- [ ] High-value accounts have unique passwords and MFA plan
- [ ] Recovery codes handled offline (not in chat)
- [ ] Sessions reviewed; disk encryption and screen lock addressed
- [ ] VPN described as limited, not absolute
