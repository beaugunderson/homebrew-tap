cask "tuck" do
  version "0.1.0"
  sha256 "153d0b6e2f0434ab216a364a7033042c6088a9f6544b08af8c53d97e5e7019fe"

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
