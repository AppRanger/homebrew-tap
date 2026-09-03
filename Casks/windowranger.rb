cask "windowranger" do
  version "1.0.6"
  sha256 "dab7b8fd8669f222d64c57760edd13f040fb1c36c4995e3c6f9eafc933c3d0d5"

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
