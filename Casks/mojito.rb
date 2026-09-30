cask "mojito" do
  version "1.9.1"
  sha256 "a9bd6eb131335556f6407562efd5d6fcbc2dff86e2152c8585b3fd8ae15c4751"

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
