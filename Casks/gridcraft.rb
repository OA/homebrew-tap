cask "gridcraft" do
  version "0.3.0"
  sha256 "529ce13e8b56ca918f9ce87743f0d5e7565f292bb86fdbbf46261b685c6bf442"

  url "https://github.com/storytold/gridcraft/releases/download/v#{version}/gridcraft-#{version}-macos-universal.dmg"
  name "GridCraft"
  desc "Spreadsheet"
  homepage "https://github.com/storytold/gridcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "GridCraft.app"
end