class HeimdallRs < Formula
  desc "EVM bytecode toolkit for analysing and decompiling unverified contracts"
  homepage "https://github.com/Jon-Becker/heimdall-rs"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/Jon-Becker/heimdall-rs/releases/download/0.9.3/heimdall-macos-arm64"
      sha256 "c279e92aa5a2178cb6327861f206eddee5d53209bb19a863915159b844cc0d23"
    end
    on_intel do
      url "https://github.com/Jon-Becker/heimdall-rs/releases/download/0.9.3/heimdall-macos-amd64"
      sha256 "5fd05a7ef935896592a81c99db031e887369897d482c408eb86ccdd53310be53"
    end
  end

  # The formula is heimdall-rs because homebrew-core's heimdall is the Samsung
  # firmware flasher and nixpkgs' heimdall is the same tool; the binary keeps
  # its own name.
  def install
    bin.install Dir["heimdall-macos-*"].first => "heimdall"
  end

  test do
    assert_match "heimdall", shell_output("#{bin}/heimdall --version")
  end
end
