cask "windowranger" do
  version "1.0.8"
  sha256 "4dbd4290aea321543d5526a78ca26c2f1a6650a1616e3f2cf15fbfc642301661"

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
