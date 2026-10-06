class Unregistry < Formula
  desc "Push docker images directly to remote servers without an external registry"
  homepage "https://github.com/psviderski/unregistry"
  version "0.4.3"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/psviderski/unregistry/releases/download/v0.4.3/unregistry_0.4.3_darwin_arm64.tar.gz"
      sha256 "2c08138c4217f0d66fb31a50e7ce29aafc92b004aa1066e6fbb4e672ed71210a"
    end
    on_intel do
      url "https://github.com/psviderski/unregistry/releases/download/v0.4.3/unregistry_0.4.3_darwin_amd64.tar.gz"
      sha256 "2c08138c4217f0d66fb31a50e7ce29aafc92b004aa1066e6fbb4e672ed71210a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/psviderski/unregistry/releases/download/v0.4.3/unregistry_0.4.3_linux_arm64.tar.gz"
      sha256 "2c08138c4217f0d66fb31a50e7ce29aafc92b004aa1066e6fbb4e672ed71210a"
    end
    on_intel do
      url "https://github.com/psviderski/unregistry/releases/download/v0.4.3/unregistry_0.4.3_linux_amd64.tar.gz"
      sha256 "2c08138c4217f0d66fb31a50e7ce29aafc92b004aa1066e6fbb4e672ed71210a"
    end
  end

  def install
    bin.install "docker-pussh"
  end

  test do
    assert_match "remote Docker daemon", shell_output("#{bin}/docker-pussh docker-cli-plugin-metadata")
  end
end
