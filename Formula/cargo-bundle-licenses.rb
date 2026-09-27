class CargoBundleLicenses < Formula
  desc "Bundle licensing of dependencies"
  homepage "https://github.com/sstadick/cargo-bundle-licenses"
  url "https://static.crates.io/crates/cargo-bundle-licenses/cargo-bundle-licenses-4.2.0.crate"
  sha256 "250a2335d1c5ef791cfc90bee35c87cc7893e826e5b2342138f56bee44f3b4b5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "bundle-licenses", shell_output("#{bin}/cargo-bundle-licenses --help")
  end
end
