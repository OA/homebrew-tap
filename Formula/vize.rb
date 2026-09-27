class Vize < Formula
  desc "High-performance Vue.js toolchain in Rust"
  homepage "https://github.com/ubugeeei-prod/vize"
  version "0.428.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ubugeeei-prod/vize/releases/download/v0.428.0/vize-aarch64-apple-darwin.tar.gz"
      sha256 "0f75016eeaa568c62d10c6690a1babdc400bab2fd5cb18984d5f0e9714ccbcac"
    end
    on_intel do
      url "https://github.com/ubugeeei-prod/vize/releases/download/v0.428.0/vize-x86_64-apple-darwin.tar.gz"
      sha256 "a9218310b593a8655c04169092e77bc7b685a9a12d14843b633e19a677eb05ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubugeeei-prod/vize/releases/download/v0.428.0/vize-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ca58d32f930c8d510e16923fda6754ac9288c3e5dff2598d47cb7dcc67a5e759"
    end
    on_intel do
      url "https://github.com/ubugeeei-prod/vize/releases/download/v0.428.0/vize-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa7423656d269aad166f8b41ab3f66e7bdaa506515569ee2287a9c7bded2d389"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "vize"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vize --version")
  end
end
