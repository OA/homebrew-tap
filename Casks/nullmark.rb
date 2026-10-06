cask "nullmark" do
  version "0.2.1"
  sha256 "48a420cf0e1314aeae1f2e149efd1c446e0073b0dec59e3d361c6d07428a8ed4"

  url "https://github.com/openbunny/nullmark/releases/download/v#{version}/Nullmark-#{version}.zip"
  name "Nullmark"
  desc "Removes a string from a PDF and verifies its absence on every surface"
  homepage "https://github.com/openbunny/nullmark"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Nullmark.app"

  zap trash: "~/Library/Containers/dev.openbunny.nullmark"

  caveats <<~EOS
    Upstream is ad-hoc signed: no Developer ID, no notarization. Gatekeeper
    blocks the first launch ("Apple could not verify ... is free of
    malware").

    Dismiss with Done, then System Settings > Privacy & Security > Open
    Anyway for Nullmark.app.

    macOS writes its own com.apple.quarantine, com.apple.provenance and
    com.apple.macl extended attributes on every PDF Nullmark exports. The
    quarantine record names Nullmark as the writing app. Before sharing an
    export, remove quarantine and macl with: xattr -c <file>
    macOS refuses removal of com.apple.provenance.
  EOS
end
