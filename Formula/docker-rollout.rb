class DockerRollout < Formula
  desc "Zero downtime deployment for Docker Compose"
  homepage "https://github.com/wowu/docker-rollout"
  url "https://github.com/wowu/docker-rollout/releases/download/v0.14/docker-rollout"
  sha256 "cdeaba6ae9eee3b0b606286e585bbda6787283d801a6ad6d9b9d2bc347fda05b"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "docker-rollout"
  end

  test do
    assert_match "docker rollout", shell_output("#{bin}/docker-rollout --help")
  end
end
