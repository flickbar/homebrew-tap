cask "flickbar" do
  version "0.11.0"
  sha256 "da906a8aee21a9fbc7a76391b2693110689bb119b3d76a9ebe6cbdb3561dca07"

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
