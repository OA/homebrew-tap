class SteamLancachePrefill < Formula
  desc "Automatically prime a Lancache with Steam games"
  homepage "https://github.com/tpill90/steam-lancache-prefill"
  url "https://github.com/tpill90/steam-lancache-prefill/releases/download/v3.7.2/SteamPrefill-3.7.2-osx-x64.zip"
  sha256 "4e9b11014d70f2fedb3df9fd9f003448e1bd62251b8b3126d6994b2fdb11c306"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "SteamPrefill-#{version}-osx-x64/SteamPrefill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/SteamPrefill --version")
  end
end
