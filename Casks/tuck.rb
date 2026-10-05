cask "tuck" do
  version "0.3.2"
  sha256 "1e35697677c4959ae9d397b2b9297d3daa91fa62872a4de90175ab048440eb9d"

  url "https://github.com/beaugunderson/tuck/releases/download/v#{version}/Tuck-#{version}.zip"
  name "Tuck"
  desc "Tiny, performance-obsessed menu bar manager (Bartender replacement)"
  homepage "https://github.com/beaugunderson/tuck"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Tuck.app"

  zap trash: "~/Library/Preferences/com.beau.tuck.plist"
end
