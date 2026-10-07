class Cam < Formula
  desc "Multi-account Claude Code credential management"
  homepage "https://github.com/openbunny/cam"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/openbunny/cam/releases/download/0.1.0/cam-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_ARM64"
    end
    on_intel do
      url "https://github.com/openbunny/cam/releases/download/0.1.0/cam-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_SHA256_X86_64"
    end
  end

  def install
    bin.install "cam"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cam --version")
  end
end