class VencordInstaller < Formula
  desc "Installer CLI for Vencord"
  homepage "https://github.com/Vencord/Installer"
  url "https://github.com/Vencord/Installer/archive/refs/tags/v1.4.2.tar.gz"
  sha256 "587f0ee6c60846bfda954223d1944ef66b88ee8682a1ee32e201f4dbd1b0f1de"
  license "GPL-3.0-or-later"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "go" => :build
  depends_on arch: :arm64
  depends_on :macos

  def install
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-trimpath", "-tags", "static cli",
           "-ldflags", "-s -w -X vencordinstaller/buildinfo.InstallerTag=v#{version}",
           "-o", bin/"vencord-installer", "."
  end

  def caveats
    <<~EOS
      Run as the logged-in user, not root.
      --branch accepts only auto, stable, ptb or canary.
      Patch with: vencord-installer --install --location "/Applications/Discord Development.app"
    EOS
  end

  test do
    assert_match "Vencord Installer Cli v#{version}", shell_output("#{bin}/vencord-installer --version")
  end
end
