class Aderyn < Formula
  desc "Solidity static analyzer that integrates into your editor"
  homepage "https://github.com/Cyfrin/aderyn"
  license "GPL-3.0-only"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Cyfrin/aderyn/releases/download/aderyn-v0.6.8/aderyn-aarch64-apple-darwin.tar.xz"
      sha256 "624c6652bb9478b38ddc255c27819cd5c6cb0448f5deb72036cc9cf5a27d4aac"
    end
    on_intel do
      version "0.6.8"
      url "https://github.com/Cyfrin/aderyn/releases/download/aderyn-v0.6.8/aderyn-x86_64-apple-darwin.tar.xz"
      sha256 "c2ef361c6b2e24c20d478e6cb30cc427090f29c3501adb7190cb514623ce6d8d"
    end
  end

  def install
    bin.install "aderyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aderyn --version")
  end
end
