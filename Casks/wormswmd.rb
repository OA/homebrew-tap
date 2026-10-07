cask "wormswmd" do
  version "0.2.0"
  sha256 "d3b302048871c87f3893325e14d21bd8874f241286323e7fca33174551b0b92f"

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
