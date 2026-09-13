#!/usr/bin/env bash
set -euo pipefail

repo_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
adguard="$repo_dir/Blocked_Domains_AdGuard.txt"
reference="$repo_dir/Blocked_Domains.txt"
generator="$repo_dir/scripts/generate-reference-blocklist.awk"
tmp_dir=$(mktemp -d)
trap 'rm -rf "$tmp_dir"' EXIT

awk '
  /^! [A-Za-z0-9._-]+: / || /^! Block every hostname under / { annotated = 1 }
  /^(![[:space:]]+)?\|\|[A-Za-z0-9.-]+\^$/ {
    if (!annotated) {
      printf "Rule lacks a one-line annotation at line %d: %s\n", NR, $0 > "/dev/stderr"
      failed = 1
    }
    annotated = 0
  }
  END { exit failed }
' "$adguard"

awk -f "$generator" "$adguard" > "$tmp_dir/expected-reference.txt"
if ! cmp -s "$tmp_dir/expected-reference.txt" "$reference"; then
  echo "Blocked_Domains.txt is not generated from Blocked_Domains_AdGuard.txt." >&2
  echo "Run: awk -f scripts/generate-reference-blocklist.awk Blocked_Domains_AdGuard.txt > Blocked_Domains.txt" >&2
  exit 1
fi

active=$(awk '/^\|\|[A-Za-z0-9.-]+\^$/ { count++ } END { print count + 0 }' "$adguard")
disabled=$(awk '/^![[:space:]]+\|\|[A-Za-z0-9.-]+\^$/ { count++ } END { print count + 0 }' "$adguard")
printf 'Validated %d active and %d disabled rules.\n' "$active" "$disabled"
