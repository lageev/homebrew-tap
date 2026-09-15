cask "studio-mini" do
  version "0.2.5"
  sha256 "cd3db508bda9c408c549c943761401a62cf7c4dfc364607039aa53a8d0f714e9"

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
