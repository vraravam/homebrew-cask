cask "zen-browser@twilight" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.0.1-t.20"
  sha256 arm:   "67c560a1568ec084b4a0b7c82787396f77da12954a77a9e194e084555c757ae9",
         intel: "45f643373f3acb6a275f91718d0821f56001cbe21449822df2dc0ac4d9f33620"

  url "https://github.com/zen-browser/desktop/releases/download/twilight/zen.macos-#{arch}.dmg",
      verified: "github.com/zen-browser/desktop/"
  name "Zen Twilight"
  desc "Gecko based web browser"
  homepage "https://zen-browser.app/"

  livecheck do
    url "https://github.com/zen-browser/desktop/releases/tag/twilight"
    skip "No version information available"
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Zen Twilight.app"

  zap trash: [
        "~/Library/Application Support/Zen",
        "~/Library/Caches/Mozilla/updates/Applications/Zen Twilight",
        "~/Library/Caches/zen",
        "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
        "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
