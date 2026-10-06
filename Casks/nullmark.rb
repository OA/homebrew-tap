cask "nullmark" do
  version "0.2.0"
  sha256 "6b9a555b948121f6844b98e37288ea2eb72f8a70d8f83ab8fffa55ceea3bf168"

  url "https://github.com/openbunny/nullmark/releases/download/v#{version}/Nullmark-#{version}.zip"
  name "Nullmark"
  desc "Removes a string from a PDF and verifies its absence on every surface"
  homepage "https://github.com/openbunny/nullmark"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :golden_gate"

  app "Nullmark.app"

  zap trash: "~/Library/Containers/dev.openbunny.nullmark"

  caveats <<~EOS
    Upstream is ad-hoc signed: no Developer ID, no notarization. Gatekeeper
    blocks the first launch ("Apple could not verify ... is free of
    malware").

    Dismiss with Done, then System Settings > Privacy & Security > Open
    Anyway for Nullmark.app.
  EOS
end
