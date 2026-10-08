cask "lightcraft" do
  version "0.4.0"
  sha256 "c74e45230a54bce09bf86cecee7e22f3374ee46f8ba779ddda3f4ee7910d3f5c"

  url "https://github.com/storytold/lightcraft/releases/download/v#{version}/lightcraft-#{version}-macos-universal.dmg"
  name "LightCraft"
  desc "Photo library and raw developer"
  homepage "https://github.com/storytold/lightcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "LightCraft.app"
end