class WordcraftCli < Formula
  desc "Command-line interface for WordCraft"
  homepage "https://github.com/storytold/wordcraft"
  url "https://github.com/storytold/wordcraft/releases/download/v0.3.0/wordcraft-cli-0.3.0-macos-universal.zip"
  sha256 "73e92d185f04d5e5a42638c2e5508400459e836a2dec75596589d95727fa4fac"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "wordcraft-cli-#{version}-macos-universal/wordcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wordcraft-cli --version")
  end
end