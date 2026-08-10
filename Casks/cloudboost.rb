cask "cloudboost" do
  version "4.3.7"
  sha256 "dcaa5f536551bc032415e4c1b81da3c5931adc6adee79a14c95a268fe3fd9be6"

  url "https://github.com/victorbrandaao/CloudBoost/releases/download/v#{version}/CloudBoost_v#{version}.dmg",
      verified: "github.com/victorbrandaao/CloudBoost/"
  name "CloudBoost"
  desc "Menu bar app for cloud gaming and play-session diagnostics"
  homepage "https://getcloudboost.site/"

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
