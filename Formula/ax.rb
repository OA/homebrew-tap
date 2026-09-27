class Ax < Formula
  desc "Declarative orchestrator for autonomous agent workloads on Kubernetes"
  homepage "https://github.com/google/ax"
  url "https://github.com/google/ax/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "e242d96533c53564ad5686948df6b2f54bcb8c561b210591bae7e4ecdfeb69f5"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/ax"
  end

  test do
    assert_match "ax version", shell_output("#{bin}/ax version")
  end
end
