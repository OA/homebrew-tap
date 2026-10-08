class CadcraftCli < Formula
  desc "Command-line interface for CADCraft"
  homepage "https://github.com/storytold/cadcraft"
  url "https://github.com/storytold/cadcraft/releases/download/v0.3.0/cadcraft-cli-0.3.0-macos-universal.zip"
  sha256 "7858a0c595ec458e77246d5d529cc3aee496534e822a7c1c5bbe21f48f2ccee5"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  def install
    bin.install "cadcraft-cli-#{version}-macos-universal/cadcraft-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cadcraft-cli --version")
  end
end
