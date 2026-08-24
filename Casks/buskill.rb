cask "buskill" do
  version "0.7.0"
  sha256 "3d37067496dad3893c02d1a40cb606026ab2684e8cdc908f28c746cbfcf271f0"

  url "https://github.com/BusKill/buskill-app/releases/download/v#{version}/buskill-mac-v#{version}-x86_64.dmg",
      verified: "github.com/BusKill/buskill-app/"
  name "BusKill"
  desc "Laptop kill cord that locks or shuts down your machine when it is physically separated from you"
  homepage "https://www.buskill.in/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships an `--upgrade` self-updater. Leave updates to brew instead.
  auto_updates false

  # The .app bundle carries the version in its name, so it must be interpolated.
  app "buskill-v#{version}.app"
  binary "#{appdir}/buskill-v#{version}.app/Contents/MacOS/buskill"

  zap trash: [
    "#{appdir}/.buskill",
    "~/.buskill",
    "~/Applications/.buskill",
    "/Applications/.buskill",
  ]

  caveats <<~EOS
    The upstream BusKill build is only ad-hoc signed (no Developer ID, no
    notarization), and it is an x86_64-only binary.

      * Gatekeeper will refuse to open it if it was installed with quarantine.
        Install it with:

            brew install --cask --no-quarantine buskill

        or clear the flag on an already-installed copy:

            xattr -dr com.apple.quarantine "#{appdir}/buskill-v#{version}.app"

      * On Apple Silicon it runs under Rosetta 2:

            softwareupdate --install-rosetta --agree-to-license

    BusKill stores its config next to the app bundle, e.g.
    #{appdir}/.buskill/config.ini

    Do not use the app's built-in "-U/--upgrade" updater; it installs a second
    copy outside of Homebrew's control. Use `brew upgrade --cask buskill`.
  EOS
end
