cask "viralmint" do
  version "2026.11.20.1"
  sha256 "b49f1935ec3c56cb0a062094a36dbe0c1458f79bf6ca86b045dd6054a35179dd"

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
