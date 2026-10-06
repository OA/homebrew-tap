class CaptainhookBin < Formula
  desc "Flexible git hook manager for sharing hooks with a team"
  homepage "https://github.com/captainhook-git/captainhook-bin"
  version "1.4.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/captainhook-git/captainhook-bin/releases/download/1.4.1/captainhook-bin_Darwin_arm64.tar.gz"
      sha256 "1c97936b4c79c57c1fb866f9276d25847086f36cb377e17941b18ddd92676b98"
    end
    on_intel do
      url "https://github.com/captainhook-git/captainhook-bin/releases/download/1.4.1/captainhook-bin_Darwin_x86_64.tar.gz"
      sha256 "5bc0168e8745567b8994939ae12a6752d25c76fa13b8635c420910d7d6842392"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/captainhook-git/captainhook-bin/releases/download/1.4.1/captainhook-bin_Linux_arm64.tar.gz"
      sha256 "e05e4a1a6354cf86a233f7e3d7aea2e4f30311c8d36926288bdaa7b4198bb331"
    end
    on_intel do
      url "https://github.com/captainhook-git/captainhook-bin/releases/download/1.4.1/captainhook-bin_Linux_x86_64.tar.gz"
      sha256 "a26c90cd7c071658f4f55b4d7fa7f3ae1f5843331fa5c99c26c2a4c401c39f4d"
    end
  end

  def install
    bin.install "captainhook"
  end

  test do
    assert_match "CaptainHook", shell_output("#{bin}/captainhook")
  end
end
