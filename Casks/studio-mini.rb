cask "studio-mini" do
  version "0.2.10"
  sha256 "31c766a0d372d554acd4570ce0efc65a32f2ba888c87cf7a005f85862a7aabdf"

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
