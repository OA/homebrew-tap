cask "wordcraft" do
  version "0.3.0"
  sha256 "d16c8906d30e4d4a46ac51abf7c599382a1d3d2e3c5b918219464448b9358d5e"

  url "https://github.com/storytold/wordcraft/releases/download/v#{version}/wordcraft-#{version}-macos-universal.dmg"
  name "WordCraft"
  desc "Word processor"
  homepage "https://github.com/storytold/wordcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "WordCraft.app"
end