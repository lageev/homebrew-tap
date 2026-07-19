cask "focusmic" do
  version "0.0.4"
  sha256 "fdad47c726cee74f57ce9075136940844797879ff58e95c3dc40b2c2e531693c"

  url "https://github.com/lageev/FocusMic/releases/download/v#{version}/FocusMic-\#{version}.zip",
      verified: "github.com/lageev/FocusMic/"
  name "FocusMic"
  desc "Keep the default audio input locked to your preferred microphone"
  homepage "https://focusmic.yayalu.top/"

  depends_on macos: :sequoia

  app "FocusMic.app"

  uninstall quit: "top.yayalu.FocusMic"

  zap trash: "~/Library/Preferences/top.yayalu.FocusMic.plist"
end
