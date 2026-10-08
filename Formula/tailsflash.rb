# typed: false
# frozen_string_literal: true

class Tailsflash < Formula
  desc "Write the newest verified Tails image to a USB stick"
  homepage "https://github.com/openbunny/tailsflash"
  url "https://github.com/openbunny/tailsflash/releases/download/v0.0.0/tailsflash-0.0.0-aarch64-macos.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bin/tailsflash"
    man1.install "share/man/man1/tailsflash.1"
    zsh_completion.install "share/zsh/site-functions/_tailsflash"
    bash_completion.install "share/bash-completion/completions/tailsflash"
    fish_completion.install "share/fish/vendor_completions.d/tailsflash.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tailsflash --version")
  end
end
