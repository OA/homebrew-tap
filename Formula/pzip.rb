class Pzip < Formula
  desc "Blazing fast concurrent zip archiver and extractor"
  homepage "https://github.com/ybirader/pzip"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/ybirader/pzip/releases/download/v0.2.0/pzip_Darwin_arm64.tar.gz"
      sha256 "4713de75736f45978395336b6b01d0d29b321cf05526102b00b6339a6ad8ddfd"
    end
    on_intel do
      url "https://github.com/ybirader/pzip/releases/download/v0.2.0/pzip_Darwin_x86_64.tar.gz"
      sha256 "4c628b0520b1fbf9029d43019f7202b0272246cd6d59f31644e7e7d5f551e75f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ybirader/pzip/releases/download/v0.2.0/pzip_Linux_arm64.tar.gz"
      sha256 "f91e806d963b5f9ce474519205474e79129d17f6d6aff1654bd88797fd09b482"
    end
    on_intel do
      url "https://github.com/ybirader/pzip/releases/download/v0.2.0/pzip_Linux_x86_64.tar.gz"
      sha256 "866673c3191c350819a30f877cddef94473336b46f0164621d0c1ab95880e9b9"
    end
  end

  def install
    bin.install "pzip"
  end

  test do
    assert_match "archiving files concurrently", shell_output("#{bin}/pzip --help")
  end
end
