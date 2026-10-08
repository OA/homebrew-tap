# frozen_string_literal: true

class Cqg < Formula
  desc "Claude Code quota monitor and guard"
  homepage "https://github.com/openbunny/claude-quota-guard"
  url "https://github.com/openbunny/claude-quota-guard.git", revision: "986f3f10fd2b7c76298d6a975c380fc0f85f864e"
  version "0.1.0"
  license "MIT"

  depends_on "go" => :build

  def fetch
    ENV["GOTOOLCHAIN"] = "local"
    system "go", "mod", "download"
  end

  def install
    ENV["GOPROXY"] = "off"
    ENV["GOTOOLCHAIN"] = "local"
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/cqg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cqg version")
  end
end
