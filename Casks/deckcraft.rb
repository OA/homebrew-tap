cask "deckcraft" do
  version "0.3.0"
  sha256 "dbcf3eabcdd0788eef06dbd2e4aa077e5b8f874b73c4dad5700a6907b29dab92"

  url "https://github.com/storytold/deckcraft/releases/download/v#{version}/deckcraft-#{version}-macos-universal.dmg"
  name "DeckCraft"
  desc "Presentations and slide shows"
  homepage "https://github.com/storytold/deckcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "DeckCraft.app"
end
