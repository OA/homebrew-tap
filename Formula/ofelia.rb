class Ofelia < Formula
  desc "Docker job scheduler (crontab for docker)"
  homepage "https://github.com/mcuadros/ofelia"
  version "0.3.22"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/mcuadros/ofelia/releases/download/v0.3.22/ofelia_0.3.22_darwin_arm64.tar.gz"
      sha256 "93615947535fa120c270f32a9761b98954064b328190790f78e85a56abd28f1d"
    end
    on_intel do
      url "https://github.com/mcuadros/ofelia/releases/download/v0.3.22/ofelia_0.3.22_darwin_amd64.tar.gz"
      sha256 "61a952ee06ed75db110692e33b4a4ff56dd8b09c0c89f5d70bc8addb11ccd2a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mcuadros/ofelia/releases/download/v0.3.22/ofelia_0.3.22_linux_arm64.tar.gz"
      sha256 "2719aaf82b37b091d40e5a92e9e8763722164ce40ecf93a2435292b5b4eccb32"
    end
    on_intel do
      url "https://github.com/mcuadros/ofelia/releases/download/v0.3.22/ofelia_0.3.22_linux_amd64.tar.gz"
      sha256 "f1e1b23c59a4fe255484213d87e573f2340fe70c48e6c653ff9ba947ed3bc00e"
    end
  end

  def install
    bin.install "ofelia"
  end

  test do
    assert_match "daemon", shell_output("#{bin}/ofelia --help")
  end
end
