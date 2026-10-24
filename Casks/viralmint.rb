cask "viralmint" do
  version "2026.10.24"
  sha256 "fa60ef03d53538c8a3db10af12f05af3d2a40059d524937bbabc65ae1d7978ef"

  url "https://github.com/tony158/viralmint-releases/releases/download/v#{version}/ViralMint-mac.dmg",
      verified: "github.com/tony158/viralmint-releases/"
  name "ViralMint"
  desc "Video pipeline for clipping, AI video generation and trend scouting"
  homepage "https://viralmint.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  app "ViralMint.app"

  zap trash: "~/.viralmint"
end
