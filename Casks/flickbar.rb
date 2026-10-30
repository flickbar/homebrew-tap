cask "flickbar" do
  version "0.9.0"
  sha256 "d9a7b6f3b87f6ae6b0935b444c291dfc4fb6964aa488dc68f66e543da1a7003d"

  url "https://github.com/flickbar/flickbar/releases/download/v#{version}/Flickbar-#{version}.zip"
  name "Flickbar"
  desc "Snap, resize and move windows with trackpad gestures on their title bars"
  homepage "https://flickbar.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Flickbar.app"

  uninstall quit: "io.github.flickbar.Flickbar"

  zap trash: "~/Library/Preferences/io.github.flickbar.Flickbar.plist"
end
