class Kumo < Formula
  desc "Lightweight AWS service emulator"
  homepage "https://github.com/sivchari/kumo"
  version "0.30.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/sivchari/kumo/releases/download/v0.30.0/kumo_0.30.0_darwin_arm64.tar.gz"
      sha256 "2da60bbd60d04cd8d8a35f1d8b32ce8100d2c8311fffbaafd6c32e80067e9e7c"
    end
    on_intel do
      url "https://github.com/sivchari/kumo/releases/download/v0.30.0/kumo_0.30.0_darwin_amd64.tar.gz"
      sha256 "83d973e78f9586b481fc1ffc12f6a17c3f249d55b91bbbd560093c1fc15e3887"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/sivchari/kumo/releases/download/v0.30.0/kumo_0.30.0_linux_arm64.tar.gz"
      sha256 "94456cb95bb3a03bdd7e420f410206a8bb76aa2fa46ea3b1f8496ea4746323f4"
    end
    on_intel do
      url "https://github.com/sivchari/kumo/releases/download/v0.30.0/kumo_0.30.0_linux_amd64.tar.gz"
      sha256 "3f7194c4ee12fda95eb8f60c06f2c38d6014d730dc4dfdb584012a5c546861ef"
    end
  end

  def install
    bin.install "kumo"
  end

  test do
    assert_match "Lightweight AWS CLI", shell_output("#{bin}/kumo --help")
  end
end
