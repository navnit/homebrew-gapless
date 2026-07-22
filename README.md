# Gapless Homebrew tap

```sh
brew install --cask navnit/gapless/gapless
```

Installs the latest published [Gapless](https://github.com/navnit/gapless)
macOS build (Apple Silicon or Intel, selected automatically) and verifies its
SHA-256 checksum against the canonical GitHub Release.

Gapless is ad hoc signed but **not notarized** by Apple. On first launch macOS
Gatekeeper will block it. To open it, go to **System Settings > Privacy &
Security**, scroll to Security, and click **Open Anyway**, then confirm. This
tap never scripts that approval, clears quarantine, or disables Gatekeeper.

```sh
brew upgrade --cask gapless
brew uninstall --cask gapless
```

The cask installs only assets already published by the canonical Gapless
GitHub Release; it never rebuilds Gapless.
