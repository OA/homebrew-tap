class Alcless < Formula
  desc "Lightweight security sandbox for macOS (Homebrew, AI agents)"
  homepage "https://github.com/AkihiroSuda/alcless"
  url "https://github.com/AkihiroSuda/alcless/releases/download/v0.2.1/alcless-0.2.1-Darwin-arm64.tar.gz"
  sha256 "e39fbd09aa5edbc2261ec6fbf6d02452640e84752719ca02f016c2764b05ebf7"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bin/alcless"
    bin.install "bin/alclessctl"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/alcless --help")
    assert_match version.to_s, shell_output("#{bin}/alclessctl --version")
  end
end
