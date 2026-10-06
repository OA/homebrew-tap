class Mergetopus < Formula
  desc "Split complex merges into integration and conflict slice branches"
  homepage "https://github.com/mwallner/mergetopus"
  url "https://github.com/mwallner/mergetopus/archive/refs/tags/v0.6.tar.gz"
  sha256 "1f646699f950a055512172987a32ae3cb674d11bfd82a7b12522a2f359df0ba7"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "oa/tap/cargo-bundle-licenses" => :build
  depends_on "rust" => :build

  def install
    system "cargo-bundle-licenses", "--format", "json", "--output", "THIRDPARTY.json"
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "mergetopus", shell_output("#{bin}/mergetopus --help")
  end
end
