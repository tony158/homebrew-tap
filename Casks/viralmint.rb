cask "viralmint" do
  version "2026.11.06"
  sha256 "101bc1d05f2ebebd9ff4f6121591d72f08dffd047ad83282b060508448c9fb91"

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
