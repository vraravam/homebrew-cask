cask "farrago" do
  version "2.1.2"
  sha256 :no_check

  url "https://cdn.rogueamoeba.com/farrago/download/Farrago.zip"
  name "Farrago"
  desc "Audio playback"
  homepage "https://rogueamoeba.com/farrago/"

  livecheck do
    url "https://rogueamoeba.net/ping/versionCheck.cgi?format=sparkle&system=999&bundleid=com.rogueamoeba.farrago&platform=osx&version=#{version.no_dots}8000"
    strategy :sparkle
  end

  no_autobump! because: :requires_manual_review

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Farrago.app"

  uninstall quit: "com.rogueamoeba.farrago"

  zap trash: [
    "~/Library/Application Support/Farrago #{version.major}",
    "~/Library/Caches/com.rogueamoeba.farrago",
    "~/Library/HTTPStorages/com.rogueamoeba.farrago",
    "~/Library/Preferences/com.rogueamoeba.farrago.plist",
    "~/Library/Saved Application State/com.rogueamoeba.farrago.savedState",
    "~/Library/WebKit/com.rogueamoeba.farrago",
  ]
end
