cask "dishywarden" do
  version "1.0.1"
  sha256 arm:   "TODO_ARM64_SHA256",
        intel: "TODO_X64_SHA256"

  url "https://github.com/arielxinzheng/DishyWarden/releases/download/v1.0.1/DishyWarden-1.0.1-mac-arm64.dmg",
      "https://github.com/arielxinzheng/DishyWarden/releases/download/v1.0.1/DishyWarden-1.0.1-mac-x64.dmg"
  name "DishyWarden"
  desc "Starlink terminal monitor (latency, packet loss, obstruction, alerts)"
  homepage "https://github.com/arielxinzheng/DishyWarden"

  depends_on macos: ">= :monterey"

  app "DishyWarden.app"

  zap trash: [
    "~/Library/Application Support/DishyWarden",
    "~/Library/Preferences/com.dishywarden.app.plist",
    "~/Library/Logs/DishyWarden",
  ]
end
