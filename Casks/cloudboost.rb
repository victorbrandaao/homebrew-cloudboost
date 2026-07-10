cask "cloudboost" do
  version "4.2.1"
  sha256 "22e1c873bda7f225bc8e5bc79f9cd5a92e179b8a52dbc5abd7e7d50b84630cd2"

  url "https://github.com/victorbrandaao/CloudBoost/releases/download/v#{version}/CloudBoost_v#{version}.dmg",
      verified: "github.com/victorbrandaao/CloudBoost/"
  name "CloudBoost"
  desc "macOS menu bar app for cloud and Mac gaming session diagnostics"
  homepage "https://victorbrandaao.github.io/CloudBoost/"

  depends_on macos: :monterey

  app "CloudBoost.app"

  zap trash: [
    "~/Library/Application Support/CloudBoost",
    "~/Library/Caches/com.victorbrandaao.CloudBoost",
    "~/Library/HTTPStorages/com.victorbrandaao.CloudBoost",
    "~/Library/Preferences/com.victorbrandaao.CloudBoost.plist",
    "~/Library/Saved Application State/com.victorbrandaao.CloudBoost.savedState",
  ]
end
