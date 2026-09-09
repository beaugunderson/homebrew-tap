cask "tuck" do
  version "0.1.3"
  sha256 "9a112ce05a088cd3b9d1ca5e3d606fbd6e69c1e07b0d44f5778b07ee29a81432"

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
