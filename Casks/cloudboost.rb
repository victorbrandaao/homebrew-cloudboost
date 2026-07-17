cask "cloudboost" do
  version "4.2.4"
  sha256 "a50b086efa2f8ad61e8ab0cc8990e1b0ca39f5c94c801a7b4f47e3eeb5f323c8"

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
