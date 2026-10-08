cask "mactap" do
  version "2.1.2"
  sha256 "6abda22fabaf0fd79518f9006271f1ea570c0d4418a46666b7f3e062de5da636"

  url "https://github.com/jaskirat1616/mactap-app/releases/download/v#{version}/MacTap-#{version}.zip"
  name "MacTap"
  desc "Trigger shortcuts by knocking on a MacBook"
  homepage "https://github.com/jaskirat1616/mactap-app"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MacTap.app"
end