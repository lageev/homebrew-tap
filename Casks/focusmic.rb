cask "focusmic" do
  version "0.0.1"
  sha256 "cdfb0899df8a4420a5bb46f572154f22a627115a14db3c1213da0b8fabe77c2e"

  url "https://github.com/lageev/FocusMic/releases/download/v#{version}/FocusMic.dmg",
      verified: "github.com/lageev/FocusMic/"
  name "FocusMic"
  desc "Keep the default audio input locked to your preferred microphone"
  homepage "https://focusmic.yayalu.top/"

  depends_on macos: :sequoia

  app "FocusMic.app"

  uninstall quit: "top.yayalu.FocusMic"

  zap trash: "~/Library/Preferences/top.yayalu.FocusMic.plist"
end
