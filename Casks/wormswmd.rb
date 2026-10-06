cask "wormswmd" do
  version "0.1.2"
  sha256 "61f7043fde4cf08823b95bf6b4d0ef27266f9de972e24116588b5320fe1d7c88"

  url "https://github.com/openbunny/wormswmd/releases/download/v#{version}/wormswmd_#{version}_darwin_arm64.tar.gz"
  name "wormswmd"
  desc "Patches Worms W.M.D so the game opens again"
  homepage "https://github.com/openbunny/wormswmd"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  binary "wormswmd"

  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/wormswmd"]
  end
end
