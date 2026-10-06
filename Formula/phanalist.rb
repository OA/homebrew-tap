class Phanalist < Formula
  desc "Performant static analyzer for PHP"
  homepage "https://github.com/denzyldick/phanalist"
  version "1.1.13"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/denzyldick/phanalist/releases/download/v1.1.13/phanalist-aarch64-apple-darwin.tar.gz"
      sha256 "16d7e1ead0d462eb23f0c9e7bc2bf3235edea32774f2c65dff129115f19a51ba"
    end
    on_intel do
      url "https://github.com/denzyldick/phanalist/releases/download/v1.1.13/phanalist-x86_64-apple-darwin.tar.gz"
      sha256 "b09c407b5189483fb4bc79766e7588e5ea46334c18ab0debd31c725d05a1e9d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/denzyldick/phanalist/releases/download/v1.1.13/phanalist-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52159a12edd6637c2d00b5d2c11169881199514211cda46e66dd371599b71c65"
    end
    on_intel do
      url "https://github.com/denzyldick/phanalist/releases/download/v1.1.13/phanalist-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddd71eb8a85123436370cd692c912f510ee26af000216c9f620194b18f4ba347"
    end
  end

  def install
    bin.install "phanalist"
  end

  test do
    assert_match "phanalist", shell_output("#{bin}/phanalist --version")
  end
end
