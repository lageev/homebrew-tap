cask "focusmic" do
  version "0.0.4"
  sha256 "73cc21cab6b70403b11254aa4e05c83cb13ac2f279ed593a0378d3cca7eab9a8"

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
