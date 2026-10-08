class DesigncraftCli < Formula
  desc "Command-line interface for DesignCraft"
  homepage "https://github.com/storytold/designcraft"
  url "https://github.com/storytold/designcraft/releases/download/v0.4.0/designcraft-cli-0.4.0-macos-universal.zip"
  sha256 "c80f9f373d8e4aaa92f59aceb3907f7715be58e7ada9bd4787efd01c2cadf36a"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "designcraft-cli-#{version}-macos-universal/designcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/designcraft-cli --version")
  end
end
