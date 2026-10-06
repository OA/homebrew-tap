cask "cua-driver" do
  version "0.34.0"
  sha256 "2d0ade531c07b4d16e8078844fe1b63a0dfa0ee19677c9dcc079b4d3460ab387"

  url "https://github.com/trycua/cua/releases/download/cua-driver-rs-v#{version}/cua-driver-rs-#{version}-darwin-universal.tar.gz"
  name "Cua Driver"
  desc "Computer-use driver for Accessibility and screen capture"
  homepage "https://cua.ai/docs/cua-driver"

  livecheck do
    url "https://github.com/trycua/cua/releases"
    regex(%r{/releases/tag/cua-driver-rs-v(\d+\.\d+\.\d+)(?![.\d])}i)
    strategy :page_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "cua-driver-rs-#{version}-darwin-universal/CuaDriver.app"
  binary "#{appdir}/CuaDriver.app/Contents/MacOS/cua-driver"

  zap trash: "~/.cua-driver"

  caveats <<~EOS
    Install CuaDriver.app in /Applications so macOS retains Accessibility and
    Screen Recording grants.

    Grant permissions: cua-driver permissions grant
    Disable telemetry: cua-driver telemetry disable
  EOS
end
