# homebrew-tap

Homebrew tap for personal casks.

## Install

```bash
brew tap ebeloded/tap https://github.com/ebeloded/homebrew-tap
brew install --cask transcribe-mini
```

## Update `transcribe-mini` cask

From the `transcribe` repo:

```bash
VERSION="0.1.0" \
SHA256="<sha256>" \
URL="https://github.com/ebeloded/transcribe/releases/download/v0.1.0/TranscribeMini.zip" \
scripts/render-homebrew-cask.sh
```

Then sync into this tap repo:

```bash
/Users/ebeloded/Projects/homebrew-tap/scripts/sync-transcribe-mini-cask.sh
```

Review and commit:

```bash
cd /Users/ebeloded/Projects/homebrew-tap
git add Casks/transcribe-mini.rb
git commit -m "transcribe-mini: update to v0.1.0"
git push
```
