cask "studio-mini" do
  version "0.2.4"
  sha256 "3c34f2c30d750c118b7c837cd3af18ce646f8e862af90d9fe11c6f1db85caff1"

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
