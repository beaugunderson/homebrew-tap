cask "tuck" do
  version "0.3.4"
  sha256 "c42a2fc9e0740aa6c1ea929139fbd4bb30d690c4653e36d1b4cf1c928917374e"

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
