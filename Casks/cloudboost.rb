cask "cloudboost" do
  version "4.2.0"
  sha256 "367234f03ee173f5134dbcd391a61670cd9314d0aab6000801f1d4ad12b0727b"

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
