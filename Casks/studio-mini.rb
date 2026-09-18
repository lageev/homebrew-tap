cask "studio-mini" do
  version "0.2.8"
  sha256 "fd1d126a7c6ae7dd5946618b2b2b692d45ac4d2e2a3341aa86e20b66462372f4"

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
