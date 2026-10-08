class SoundcraftCli < Formula
  desc "Command-line interface for SoundCraft"
  homepage "https://github.com/storytold/soundcraft"
  url "https://github.com/storytold/soundcraft/releases/download/v0.3.0/soundcraft-cli-0.3.0-macos-universal.zip"
  sha256 "26b2ad59cd6f4666423ab36027da9fb7ec0a63423ddfa9d8e160d9b10fb99816"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "soundcraft-cli-#{version}-macos-universal/soundcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/soundcraft-cli --version")
  end
end
