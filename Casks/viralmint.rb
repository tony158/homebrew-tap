cask "viralmint" do
  version "2026.11.09"
  sha256 "6747ac828ec56749cb80972eb64d5aed6f6fa62caf2558bc93c0e14e988e91f6"

  url "https://github.com/tony158/viralmint-releases/releases/download/v#{version}/ViralMint-mac.dmg"
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
