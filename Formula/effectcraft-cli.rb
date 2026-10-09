class EffectcraftCli < Formula
  desc "Command-line interface for EffectCraft"
  homepage "https://github.com/storytold/effectcraft"
  url "https://github.com/storytold/effectcraft/releases/download/v0.6.0/effectcraft-cli-0.6.0-macos-universal.zip"
  sha256 "d545e4681e8812e9bb4d480f6d48882f34fa6664aeda53f51ef2a2e0bc8f64bb"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "effectcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/effectcraft-cli --version")
  end
end
