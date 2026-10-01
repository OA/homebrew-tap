class Snarkjs < Formula
  desc "zkSNARK and PLONK implementation in JavaScript and WASM"
  homepage "https://github.com/iden3/snarkjs"
  url "https://registry.npmjs.org/snarkjs/-/snarkjs-0.7.6.tgz"
  sha256 "3a2b872e888e093ccee4a0636af4caf52a989c685926e663969a4ce8c2a8ead3"
  license "GPL-3.0-or-later"

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
    assert_match version.to_s, shell_output("#{bin}/snarkjs --version")
  end
end
