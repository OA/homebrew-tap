cask "kraken-desktop" do
  version "1.32.0,ebeca4bc7490b75e0cbb492bb785e3c9b63ec2b2"
  sha256 "54259c60e65123e36e10deb027b61624c1bd4ae2e71a113061e8a22b2e09e433"

  url "https://desktop-downloads.kraken.com/#{version.csv.second}/kraken-universal-apple-darwin.zip"
  name "Kraken Desktop"
  desc "Trading terminal for Kraken spot and margin markets"
  homepage "https://www.kraken.com/desktop"

  livecheck do
    url "https://desktop-downloads.kraken.com/latest.json"
    strategy :json do |json|
      "#{json["version"]},#{json["revision"]}"
    end
  end

  auto_updates true
  depends_on :macos

  pkg "Kraken Desktop.pkg"

  uninstall pkgutil: "com.kraken.desktop"

  zap trash: "~/Library/Containers/com.kraken.desktop"
end
