cask "kaset" do
  version "0.14.1"
  sha256 "b010d8227bf7310e0625019c48e65ad1538945d7450fd403ac159c7a11f29d1c"

  url "https://github.com/sozercan/kaset/releases/download/v#{version}/kaset-v#{version}.dmg"
  name "Kaset"
  desc "YouTube and YouTube Music app"
  homepage "https://github.com/sozercan/kaset"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "Kaset.app"

  zap trash: [
    "~/Library/Application Support/com.sertacozercan.Kaset",
    "~/Library/Caches/com.sertacozercan.Kaset",
    "~/Library/Preferences/com.sertacozercan.Kaset.plist",
  ]
end
