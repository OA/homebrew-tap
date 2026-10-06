class Smolvm < Formula
  desc "Portable, branchable virtual machine for running agents locally"
  homepage "https://github.com/smol-machines/smolvm"
  version "1.19.2"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/smol-machines/smolvm/releases/download/v1.19.2/smolvm-1.19.2-darwin-arm64.tar.gz"
      sha256 "878d581badf08cde85c114d52ed35c76e1c01e7d8e57e7c817957a5da5a14798"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/smol-machines/smolvm/releases/download/v1.19.2/smolvm-1.19.2-linux-arm64.tar.gz"
      sha256 "b45de87870d486dce511b68af1d39c2b404e4c84572f4959c8dfeb86d913dd24"
    end
    on_intel do
      url "https://github.com/smol-machines/smolvm/releases/download/v1.19.2/smolvm-1.19.2-linux-x86_64.tar.gz"
      sha256 "eb51bb83ad113030f329bae943be653c192e1e9543e98f502b5a2682033769d8"
    end
  end

  def install
    libexec.install "smolvm", "smolvm-bin", "lib", "agent-rootfs",
                    "overlay-template.ext4.zst", "storage-template.ext4.zst"
    bin.install_symlink libexec/"smolvm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/smolvm --version")
  end
end
