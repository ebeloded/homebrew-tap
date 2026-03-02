#!/usr/bin/env bash
set -euo pipefail

SOURCE_CASK="/Users/ebeloded/Projects/transcribe/dist/transcribe-mini.rb"
TARGET_CASK="/Users/ebeloded/Projects/homebrew-tap/Casks/transcribe-mini.rb"

if [[ ! -f "$SOURCE_CASK" ]]; then
  echo "Missing source cask: $SOURCE_CASK" >&2
  echo "Run scripts/render-homebrew-cask.sh in /Users/ebeloded/Projects/transcribe first." >&2
  exit 1
fi

mkdir -p "$(dirname "$TARGET_CASK")"
cp "$SOURCE_CASK" "$TARGET_CASK"

echo "Updated: $TARGET_CASK"
