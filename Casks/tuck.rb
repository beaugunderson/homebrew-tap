cask "tuck" do
  version "0.1.2"
  sha256 "1db78c2580fc0100df5098289a40d725096a64d5988d0ae6af9bd09579b7ec96"

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
