cask "tuck" do
  version "0.3.3"
  sha256 "617a7035fab57f6e4debcfcae3652afd98683e13632a43ff50ac6465070c0b26"

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
