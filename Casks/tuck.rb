cask "tuck" do
  version "0.1.1"
  sha256 "1451ff9854697fae12e0a7a151cb46f1d39ffb60623999b5786260af6a14fe9f"

  url "https://github.com/beaugunderson/tuck/releases/download/v#{version}/Tuck-#{version}.zip"
  name "Tuck"
  desc "Tiny, performance-obsessed menu bar manager (Bartender replacement)"
  homepage "https://github.com/beaugunderson/tuck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Tuck.app"

  zap trash: "~/Library/Preferences/com.beau.tuck.plist"
end
