cask "pdfcraft" do
  version "0.4.0"
  sha256 "740da4900e8bc4957382ef3ef37b544e19dee94bd704f7dc49a1b306e254fa10"

  url "https://github.com/storytold/pdfcraft/releases/download/v#{version}/pdfcraft-#{version}-macos-universal.dmg"
  name "PdfCraft"
  desc "PDF workbench"
  homepage "https://github.com/storytold/pdfcraft"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PdfCraft.app"
end
