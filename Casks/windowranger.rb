cask "windowranger" do
  version "1.0.11"
  sha256 "5a21e78540413e72c25c1710a3849310c04ce29edc60a09eb4fd0952f6e79df6"

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
