cask "fast-archive-preview" do
  version "1.0.0"
  sha256 "2cc8532b0f633eba03edfc02cfd0dbfca64bc3689ce9d7b005caccb84ec08863"

  url "https://github.com/beaugunderson/fast-archive-preview/releases/download/v#{version}/FastArchivePreview-#{version}.dmg"
  name "Fast Archive Preview"
  desc "Quick Look extension that lists archive contents instantly"
  homepage "https://github.com/beaugunderson/fast-archive-preview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Fast Archive Preview.app"

  caveats <<~EOS
    Quick Look only loads the extension once its containing app has been
    launched, so open Fast Archive Preview once after installing.
  EOS

  zap trash: "~/Library/Preferences/com.beaugunderson.FastArchivePreview.plist"
end
