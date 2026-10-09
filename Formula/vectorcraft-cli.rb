class VectorcraftCli < Formula
  desc "Command-line interface for VectorCraft"
  homepage "https://github.com/storytold/vectorcraft"
  url "https://github.com/storytold/vectorcraft/releases/download/v0.7.0/vectorcraft-cli-0.7.0-macos-universal.zip"
  sha256 "d111f082c095065e1658a8a32d42f2a6b739d42cbefe7d63f2773e70f36d6259"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "vectorcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vectorcraft-cli --version")
  end
end
