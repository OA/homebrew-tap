class Quill < Formula
  desc "Simple mac binary signing from any platform"
  homepage "https://github.com/anchore/quill"
  version "0.7.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/anchore/quill/releases/download/v0.7.1/quill_0.7.1_darwin_arm64.tar.gz"
      sha256 "086cfb3fc69a305d55d9aa5131bed7739d706bbd8bab78c18d011e7260111e96"
    end
    on_intel do
      url "https://github.com/anchore/quill/releases/download/v0.7.1/quill_0.7.1_darwin_amd64.tar.gz"
      sha256 "af17fae8d8dd1c8c13ef8ca541ee8205ff28a1a6e0e7cf93f636f9fc14f18ed5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anchore/quill/releases/download/v0.7.1/quill_0.7.1_linux_arm64.tar.gz"
      sha256 "b3d5bbc006f1aa0387e06349db1a988597ce348913e6e8d38d4bfb34cc93e78d"
    end
    on_intel do
      url "https://github.com/anchore/quill/releases/download/v0.7.1/quill_0.7.1_linux_amd64.tar.gz"
      sha256 "e58c6f86378a22507c1123e24412afd4ee2d3bb32ebd94d6059827dc0c1b3fbf"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "quill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/quill --version")
  end
end
