class DeckcraftCli < Formula
  desc "Command-line interface for DeckCraft"
  homepage "https://github.com/storytold/deckcraft"
  url "https://github.com/storytold/deckcraft/releases/download/v0.3.0/deckcraft-cli-0.3.0-macos-universal.zip"
  sha256 "2eba6876da3ec3560e5c4f381f7d155d49b92bbf5ba43afc2af9ae7a4b79d420"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "deckcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deckcraft-cli --version")
  end
end
