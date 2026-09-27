class GhSecure < Formula
  desc "GitHub CLI extension to enable security features on repositories"
  homepage "https://github.com/GitHubSecurityLab/gh-secure"
  url "https://github.com/GitHubSecurityLab/gh-secure/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "20a62a72a10b777c1f27fa6f28f14d810b7f65064d989eb4c241c9109e4ca035"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "gh"

  def install
    bin.install "gh-secure"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/gh-secure --version")
  end
end
