cask "flickbar" do
  version "1.0.0"
  sha256 "6e219d55132b3c05d4c5e89c2405347e66d19f1e31d6991a0c415aa54f44daca"

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
