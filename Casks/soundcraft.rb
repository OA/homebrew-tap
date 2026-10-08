cask "soundcraft" do
  version "0.3.0"
  sha256 "7c54bff61592068e86b8c323be18ff1e36c425b3186d0278287b0d428f3180ff"

  url "https://github.com/storytold/soundcraft/releases/download/v#{version}/soundcraft-#{version}-macos-universal.dmg"
  name "SoundCraft"
  desc "Digital audio workstation"
  homepage "https://github.com/storytold/soundcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "SoundCraft.app"
end
