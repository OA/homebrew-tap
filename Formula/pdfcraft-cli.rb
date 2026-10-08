class PdfcraftCli < Formula
  desc "Command-line interface for PdfCraft"
  homepage "https://github.com/storytold/pdfcraft"
  url "https://github.com/storytold/pdfcraft/releases/download/v0.4.0/pdfcraft-cli-0.4.0-macos-universal.zip"
  sha256 "a8bf7a4274d94ced4ec30f0086fd8541704960b61ca59c2e68e973d9bfb79ffe"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "pdfcraft-cli-#{version}-macos-universal/pdfcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pdfcraft-cli --version")
  end
end
