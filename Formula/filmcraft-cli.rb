class FilmcraftCli < Formula
  desc "Command-line interface for FilmCraft"
  homepage "https://github.com/storytold/filmcraft"
  url "https://github.com/storytold/filmcraft/releases/download/v0.4.0/filmcraft-cli-0.4.0-macos-universal.zip"
  sha256 "24977aa79378eade28a64ad70fe2bb4d8a1424915f2436f86fe6903d418b40dd"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "filmcraft-cli-#{version}-macos-universal/filmcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/filmcraft-cli --version")
  end
end
