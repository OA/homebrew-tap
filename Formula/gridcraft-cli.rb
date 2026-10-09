class GridcraftCli < Formula
  desc "Command-line interface for GridCraft"
  homepage "https://github.com/storytold/gridcraft"
  url "https://github.com/storytold/gridcraft/releases/download/v0.3.0/gridcraft-cli-0.3.0-macos-universal.zip"
  sha256 "2b71ff8b9a8599b61efa5ab26650a8f58313c15e34a2bc898522ebdd03640af9"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "gridcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gridcraft-cli --version")
  end
end
