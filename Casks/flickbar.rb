cask "flickbar" do
  version "1.3.0"
  sha256 "23469587026b7ebff68b9d5dd743a87cd76662d41ff2e1e77189fc0f64701079"

  url "https://github.com/flickbar/flickbar/releases/download/v#{version}/Flickbar-#{version}.zip"
  name "Flickbar"
  desc "Snap, resize and move windows with trackpad gestures on their title bars"
  homepage "https://flickbar.parsakp.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Flickbar.app"

  uninstall quit: "io.github.flickbar.Flickbar"

  zap trash: "~/Library/Preferences/io.github.flickbar.Flickbar.plist"
end
