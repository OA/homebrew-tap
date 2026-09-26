class ProtonCli < Formula
  desc "CLI for Proton Mail, Drive, Calendar, Pass and Contacts"
  homepage "https://github.com/roman-16/proton-cli"
  url "https://github.com/roman-16/proton-cli/releases/download/v4.2.3/proton-cli_4.2.3_darwin_arm64.tar.gz"
  sha256 "6d56553eb4b8cc8703a66c3bab33285f434d4d1879410c75198aa47f75477463"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "proton"
    bin.install_symlink "proton" => "proton-cli"
    bash_completion.install "completions/proton.bash" => "proton"
    zsh_completion.install "completions/proton.zsh" => "_proton"
    fish_completion.install "completions/proton.fish"
    fish_completion.install "completions/proton-cli.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/proton --version")
  end
end
