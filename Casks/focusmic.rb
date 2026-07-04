cask "focusmic" do
  version "0.0.2"
  sha256 "b91ea5ce57e6685ee152ac7e9689a5a6fffed4a8f0f483327bb1f7c7a306e8bc"

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
