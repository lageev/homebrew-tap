cask "studio-mini" do
  version "0.2.13,25"
  sha256 "99e46893f300a36f3f122b68e067117e428006cfa74055eae40a33532ae5b595"

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
