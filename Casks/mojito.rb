cask "mojito" do
  version "1.10.0"
  sha256 "760cda9658004f5c7ed4f650b54dc7d673ca8f2ab6686fef326780c7751920ce"

  url "https://github.com/wr/mojito/releases/download/v#{version}/Mojito.dmg"
  name "Mojito"
  desc "Type :emoji:, ::symbol::, and :::gif::: shortcodes in any text field"
  homepage "https://mojito.wells.ee/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Mojito.app"

  uninstall quit: "ee.wells.Mojito"

  zap trash: [
    "~/Library/Caches/ee.wells.Mojito",
    "~/Library/HTTPStorages/ee.wells.Mojito",
    "~/Library/Preferences/ee.wells.Mojito.plist",
  ]
end
