cask "mojito" do
  version "1.10.2"
  sha256 "4d32ee257fa6540507e3736555bf9c0eee7afb2835e53482329a573e08609b7d"

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
