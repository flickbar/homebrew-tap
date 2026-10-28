cask "flickbar" do
  version "0.5.0"
  sha256 "b573898b12baad257ab967b08797ce409ab6ac79769da729937238e40c299b81"

  url "https://github.com/flickbar/flickbar/releases/download/v#{version}/Flickbar-#{version}.zip"
  name "Flickbar"
  desc "Snap, resize and move windows with trackpad gestures on their title bars"
  homepage "https://github.com/flickbar/flickbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Flickbar.app"

  zap trash: "~/Library/Preferences/io.github.flickbar.Flickbar.plist"

  caveats <<~EOS
    Flickbar isn't notarized by Apple, so macOS blocks it the first time you open it.
    Open it once, then click Open Anyway in System Settings → Privacy & Security.
    Flickbar then asks for Accessibility access, which it needs to move windows.
  EOS
end
