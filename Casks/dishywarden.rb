cask "dishywarden" do
  # The release ships one disk image per architecture; `arch` picks the
  # right one for the machine that installs it.
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "9d9deeebe109e961b3499415e941c3a11c75e9c681d35b2a802425b532adf705",
         intel: "5bbfcb175e9132426a253d5f7082f528d9ba9ac48b07cc8c705a86678b8a60cc"

  url "https://github.com/arielxinzheng/DishyWarden/releases/download/v1.0.1/DishyWarden-1.0.1-mac-#{arch}.dmg"
  name "DishyWarden"
  desc "Starlink terminal monitor (latency, packet loss, obstruction, alerts)"
  homepage "https://github.com/arielxinzheng/DishyWarden"

  depends_on macos: :monterey

  app "DishyWarden.app"

  zap trash: [
    "~/Library/Application Support/DishyWarden",
    "~/Library/Logs/DishyWarden",
    "~/Library/Preferences/com.dishywarden.app.plist",
  ]
end
