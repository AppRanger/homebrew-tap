cask "windowranger" do
  version "1.0.4"
  sha256 "41af7c05ec1efa3665a245cdb9187822032f07462964afb444a835b85f58af58"

  url "https://github.com/AppRanger/windowranger/releases/download/v#{version}/WindowRanger-#{version}.dmg"
  name "WindowRanger"
  desc "Native workspace and window manager"
  homepage "https://windowranger.com/"

  auto_updates true
  depends_on macos: :sonoma

  app "WindowRanger.app"

  uninstall quit: "dev.appranger.WindowRanger"

  zap trash: [
    "~/Library/Caches/com.windowranger.WindowRanger",
    "~/Library/Caches/dev.appranger.WindowRanger",
    "~/Library/HTTPStorages/dev.appranger.WindowRanger",
    "~/Library/HTTPStorages/dev.appranger.WindowRanger.binarycookies",
    "~/Library/Logs/dev.appranger.WindowRanger",
    "~/Library/Preferences/com.windowranger.WindowRanger.plist",
    "~/Library/Preferences/dev.appranger.WindowRanger.plist",
    "~/Library/Saved Application State/com.windowranger.WindowRanger.savedState",
    "~/Library/Saved Application State/dev.appranger.WindowRanger.savedState",
  ]
end
