class Knip < Formula
  desc "Find unused files, dependencies and exports in JavaScript and TypeScript"
  homepage "https://knip.dev"
  url "https://registry.npmjs.org/knip/-/knip-6.41.0.tgz"
  sha256 "17fb66978f94396a16e4e7247fbdce08b61991a8d628309f91e8a1abe0186b83"
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
