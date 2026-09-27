class Canopy < Formula
  desc "Run, lint, and language-server GitHub Actions workflows locally"
  homepage "https://github.com/ferranbt/canopy"
  url "https://github.com/ferranbt/canopy/releases/download/v0.1.4/canopy-v0.1.4-aarch64-apple-darwin.tar.gz"
  sha256 "3987b18169ad0a5b6e0f890582c0a3eb48f50efa33d9d81be716a3375a913bdb"
  license "MPL-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "canopy"
  end

  test do
    assert_match "run", shell_output("#{bin}/canopy --help")
  end
end
