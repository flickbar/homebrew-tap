cask "flickbar" do
  version "1.1.0"
  sha256 "b9259e17d30f167b8d89a90b9f6c19946e05ef6885354b93629154e031cd8eb2"

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
