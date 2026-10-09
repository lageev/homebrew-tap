cask "studio-mini" do
  version "0.2.11,23"
  sha256 "7263b0bbb64dd15908c1a985a8581c535ca3e1508dc6949e8afb9f42b431dd55"

  url "https://github.com/lageev/StudioMini/releases/download/v#{version.csv.first}/Studio-Mini-#{version.csv.first}.zip"
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
