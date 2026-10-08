cask "cadcraft" do
  version "0.3.0"
  sha256 "25ce03bc2c6a913fc4c6dc6b4233275572a251cca1b1cceb8b8356da0f99b2fa"

  url "https://github.com/storytold/cadcraft/releases/download/v#{version}/cadcraft-#{version}-macos-universal.dmg"
  name "CADCraft"
  desc "Computer-aided design and drafting"
  homepage "https://github.com/storytold/cadcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "CADCraft.app"
end
