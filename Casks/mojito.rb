cask "mojito" do
  version "1.10.1"
  sha256 "ebb7e73e9651779762f9527f9ba8479c826ecbe876c80213f6831a4303870153"

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
