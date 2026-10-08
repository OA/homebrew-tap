cask "designcraft" do
  version "0.4.0"
  sha256 "6c46a54bf0b990fcfa81ea3849bad5b673a53ede06a9580cc3fc1cdfe82da5ae"

  url "https://github.com/storytold/designcraft/releases/download/v#{version}/designcraft-#{version}-macos-universal.dmg"
  name "DesignCraft"
  desc "Page layout and publishing"
  homepage "https://github.com/storytold/designcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DesignCraft.app"
end