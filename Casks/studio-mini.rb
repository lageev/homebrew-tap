cask "studio-mini" do
  version "0.2.7"
  sha256 "fa087a37851da567bbc8b6ef217eeee1a8f717af2bab7bba075224c58ed775e0"

  url "https://github.com/lageev/StudioMini/releases/download/v#{version}/Studio-Mini-#{version}.zip"
  name "Studio Mini"
  desc "Build, install, and manage Android APKs"
  homepage "https://github.com/lageev/StudioMini"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Studio Mini.app"

  uninstall quit: "com.fring.androidbuilddesk"

  zap trash: [
    "~/Library/Application Support/AndroidBuildDesk",
    "~/Library/Caches/com.fring.androidbuilddesk",
    "~/Library/Preferences/com.fring.androidbuilddesk.plist",
    "~/Library/Saved Application State/com.fring.androidbuilddesk.savedState",
  ]
end
