cask "kraken-desktop" do
  version "1.31.0,dc6d99cc41457d763ab66d7947c9dfbd47e63416"
  sha256 "1553fc65045686dc11e5dadf0cb5c5c7971b57a63eefc0972a49c83a0147b438"

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
