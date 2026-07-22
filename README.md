# Gapless Homebrew tap

```sh
brew install --cask navnit/gapless/gapless
```

Installs the latest published [Gapless](https://github.com/navnit/gapless)
macOS build (Apple Silicon or Intel, selected automatically) and verifies its
SHA-256 checksum against the canonical GitHub Release.

Gapless is ad hoc signed but **not notarized** by Apple. This cask removes the
download quarantine on install, so the app opens without a Gatekeeper prompt —
meaning it runs software Apple has not reviewed. If you would rather keep
Gatekeeper's check and approve the app yourself, skip the cask: download the DMG
directly from the [latest Release](https://github.com/navnit/gapless/releases/latest)
and approve the first launch via **System Settings > Privacy & Security > Open
Anyway**.

```sh
brew upgrade --cask gapless
brew uninstall --cask gapless
```

The cask installs only assets already published by the canonical Gapless
GitHub Release; it never rebuilds Gapless.
