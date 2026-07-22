cask "gapless" do
  arch arm: "arm64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "fd9e8fcac5db7626aaab983f58eff2303752a1f0e1d73683f5d1ea52cf6c1e8a",
         intel: "6aa9461a45cc03cf56a9c51c483247f9ea871815f9c0f9dc06a70b7b58e610aa"

  url "https://github.com/navnit/gapless/releases/download/v#{version}/Gapless-#{version}-macos-#{arch}-UNNOTARIZED.dmg"
  name "Gapless"
  desc "Desktop video editor"
  homepage "https://github.com/navnit/gapless"

  livecheck do
    url "https://github.com/navnit/gapless/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Gapless.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Gapless.app"]
  end

  caveats <<~EOS
    Gapless #{version} is ad hoc signed but not notarized by Apple. This cask
    removes the download quarantine so the app opens without a Gatekeeper
    prompt, which means it runs software Apple has not reviewed.
  EOS
end
