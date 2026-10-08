cask "filmcraft" do
  version "0.4.0"
  sha256 "81feeedd6294579fe51f07acff2f8bac57c2ca72a0b49977ef76be67c7c45237"

  url "https://github.com/storytold/filmcraft/releases/download/v#{version}/filmcraft-#{version}-macos-universal.dmg"
  name "FilmCraft"
  desc "Video editor"
  homepage "https://github.com/storytold/filmcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "FilmCraft.app"
end
