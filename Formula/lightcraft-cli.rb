class LightcraftCli < Formula
  desc "Command-line interface for LightCraft"
  homepage "https://github.com/storytold/lightcraft"
  url "https://github.com/storytold/lightcraft/releases/download/v0.4.0/lightcraft-cli-0.4.0-macos-universal.zip"
  sha256 "7d900d72b1a06694b3d7477cc46672fc01a40a938a9c9014ae5ef714fc5783ee"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "lightcraft-cli-#{version}-macos-universal/lightcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightcraft-cli --version")
  end
end
