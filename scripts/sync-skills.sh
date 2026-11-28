#!/usr/bin/env bash
set -euo pipefail
url=https://github.com/polzheltukhina-ai/matveeva-polly-skills.git
root="$(git rev-parse --show-toplevel 2>/dev/null || pwd)"
ref="${MATVEEVA_REF:-main}"
cache="$root/.matveeva-cache"
repo="$cache/library"
mkdir -p "$cache"
if [ ! -d "$repo/.git" ]; then
  if [ -e "$repo" ]; then echo "Invalid cache; refusing overwrite" >&2; exit 1; fi
  tmp="$(mktemp -d "$cache/clone.XXXXXX")"
  trap 'rm -rf "$tmp"' EXIT
  git clone --quiet --depth 1 --single-branch --branch "$ref" "$url" "$tmp"
  mv "$tmp" "$repo"
  trap - EXIT
else
  [ "$(git -C "$repo" remote get-url origin)" = "$url" ] || { echo "Unexpected cache remote" >&2; exit 1; }
  [ -z "$(git -C "$repo" status --porcelain)" ] || { echo "Cache has local changes; refusing overwrite" >&2; exit 1; }
  if [ -z "${MATVEEVA_PIN:-}" ]; then
    if git -C "$repo" fetch --quiet --depth 1 origin "$ref"; then
      git -C "$repo" checkout --quiet --detach FETCH_HEAD
    else
      echo "OFFLINE: using cached version" >&2
    fi
  fi
fi
if [ -n "${MATVEEVA_PIN:-}" ]; then
  [[ "$MATVEEVA_PIN" =~ ^[0-9a-f]{40}$ ]] || { echo "Invalid commit SHA" >&2; exit 1; }
  git -C "$repo" cat-file -e "$MATVEEVA_PIN^{commit}" 2>/dev/null || git -C "$repo" fetch --quiet --depth 1 origin "$MATVEEVA_PIN"
  git -C "$repo" checkout --quiet --detach "$MATVEEVA_PIN"
fi
printf 'LIBRARY=%s\nVERSION=%s\n' "$repo" "$(git -C "$repo" rev-parse HEAD)"
