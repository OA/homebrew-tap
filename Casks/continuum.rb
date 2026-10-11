cask "continuum" do
  version "0.97.8"
  sha256 "ff5944f24be9f666a2efb5536e32b66a21a6b9a4baaf65707686166ec74aeb1a"

  url "https://github.com/Continuumcodeapp/continuum-updates/releases/latest/download/Continuum-arm64.dmg"
  name "Continuum"
  desc "Agentic coding workbench that runs Claude, Codex, and other AI providers side by side"
  homepage "https://continuumcode.ai/"

  livecheck do
    url "https://continuumcodeapp.github.io/continuum-updates/updates/appcast.xml"
    strategy :appcast
  end

  auto_updates true
  depends_on arch: :arm64

  app "Continuum.app"
end
