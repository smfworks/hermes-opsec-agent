#!/usr/bin/env bash
# Fail if tracked docs contain Hermes context-injection scanner tripwires.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

# Patterns known to trip Hermes prompt-injection scanning on context files.
# Keep the list short; extend carefully so we do not ban legitimate security docs.
PATTERN='ignore previous instructions|disregard (your|these) (rules|instructions)|system prompt override'

HITS="$(git grep -i -E -n "$PATTERN" -- \
  '*.md' '*.yaml' '*.yml' \
  ':!:CREDITS.md' \
  2>/dev/null || true)"

if [[ -n "$HITS" ]]; then
  echo "ERROR: trigger-phrase matches (rephrase to avoid Hermes scanner trips):" >&2
  echo "$HITS" >&2
  exit 1
fi

echo "OK: no known trigger phrases in markdown/yaml"
