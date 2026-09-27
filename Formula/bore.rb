class Bore < Formula
  desc "Simple CLI tool for making tunnels to localhost"
  homepage "https://github.com/ekzhang/bore"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ekzhang/bore/releases/download/v0.6.0/bore-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "65f43a67b90874700538bdb6064c5e92276e64dfba24f5cd72ef24a035eec3bc"
    end
    on_intel do
      url "https://github.com/ekzhang/bore/releases/download/v0.6.0/bore-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "206db723a382bbc18d2893fc8472868e0b5f41de35975269aab7891ecc8659cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ekzhang/bore/releases/download/v0.6.0/bore-v0.6.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ffc4515f3617420b243758cf36ed6a63208d7dba76b2ec3e90d1f476a9742951"
    end
    on_intel do
      url "https://github.com/ekzhang/bore/releases/download/v0.6.0/bore-v0.6.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e484d1e3acba77169b773f31a5bfb34192d4b660f44a094a658a2522cd2270f7"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "bore"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bore --version")
  end
end
