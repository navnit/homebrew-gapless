cask "gapless" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "2631442f3a808c6d6bf65b49ff7469e9c7d1a76e73105d9f66535f53650c4fc8",
         intel: "ae6b7502abfc034b15e51144e8b5be3ec4a1711157d043f9c057208f07d32588"

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

  caveats <<~EOS
    Gapless #{version} is ad hoc signed but not notarized by Apple. On first
    launch macOS will block it. To open it, go to
    System Settings > Privacy & Security, scroll to Security, and click
    "Open Anyway", then confirm. Each new version may require this again.
  EOS
end
