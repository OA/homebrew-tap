cask "photocraft" do
  version "0.5.0"
  sha256 "dff8c8105d5938d46fa4ba29559d3efc0f1ea195a5392d36cf62bc14ea2de5e7"

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-macos-universal.dmg"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://github.com/storytold/photocraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PhotoCraft.app"
end