class PhotocraftCli < Formula
  desc "Command-line interface for PhotoCraft"
  homepage "https://github.com/storytold/photocraft"
  url "https://github.com/storytold/photocraft/releases/download/v0.5.0/photocraft-cli-0.5.0-macos-universal.zip"
  sha256 "8af20fa1254a17f75cd99ccf1d25b6c9ad5cfb51c6a47ff7463c228ef25ad01c"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "photocraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/photocraft-cli --version")
  end
end
