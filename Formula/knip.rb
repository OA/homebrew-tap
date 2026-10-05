class Knip < Formula
  desc "Find unused files, dependencies and exports in JavaScript and TypeScript"
  homepage "https://knip.dev"
  url "https://registry.npmjs.org/knip/-/knip-6.39.0.tgz"
  sha256 "eda83ec20de855acedf000f9259cba17219d4a290a2644d3e685c24f42f22f83"
  license "ISC"

  livecheck do
    url :stable
    strategy :npm
  end

  depends_on arch: :arm64
  depends_on :macos
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/knip --version")
  end
end
