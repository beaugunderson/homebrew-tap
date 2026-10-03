cask "tuck" do
  version "0.2.0"
  sha256 "8c994b79d1b4b0fb30fbdfd4437c99ac4cbcdeae36ac21ecadd146f5b4b60b11"

  url "https://github.com/beaugunderson/tuck/releases/download/v#{version}/Tuck-#{version}.zip"
  name "Tuck"
  desc "Tiny, performance-obsessed menu bar manager (Bartender replacement)"
  homepage "https://github.com/beaugunderson/tuck"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Tuck.app"

  zap trash: "~/Library/Preferences/com.beau.tuck.plist"
end
