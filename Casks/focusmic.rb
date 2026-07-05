cask "focusmic" do
  version "0.0.3"
  sha256 "bb6a859c5eeb82f99c71a768e7e9348217236da34831e037038130a7379ad7d1"

  url "https://github.com/lageev/FocusMic/releases/download/v#{version}/FocusMic-#{version}.zip",
      verified: "github.com/lageev/FocusMic/"
  name "FocusMic"
  desc "Keep the default audio input locked to your preferred microphone"
  homepage "https://focusmic.yayalu.top/"

  depends_on macos: :sequoia

  app "FocusMic.app"

  uninstall quit: "top.yayalu.FocusMic"

  zap trash: "~/Library/Preferences/top.yayalu.FocusMic.plist"
end
