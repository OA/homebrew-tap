class CodexSecurity < Formula
  desc "TypeScript SDK and CLI for Codex Security"
  homepage "https://github.com/openai/codex-security"
  url "https://registry.npmjs.org/@openai/codex-security/-/codex-security-0.1.31.tgz"
  sha256 "e330e2e8f8882b781c4010e7e01c7f313c31483089d5aac2e7af94bf0550a002"
  license "Apache-2.0"

  livecheck do
    url :stable
    strategy :npm
  end

  depends_on arch: :arm64
  depends_on :macos
  depends_on "node"
  depends_on "python@3.13"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/codex-security --version")
  end
end
