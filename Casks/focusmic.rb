cask "focusmic" do
  version "0.0.3"
  sha256 "c32340865929348e04fa171872823c2c80579e27d97ab8f8d48383b51179ec2e"

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
