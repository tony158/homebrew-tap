cask "viralmint" do
  version "2026.10.25"
  sha256 "4019a7cca92c4dcf9ca93bf13062738e4bfefbbe5332bd112aeb4e2a2b56532a"

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
