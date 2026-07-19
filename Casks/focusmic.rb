cask "focusmic" do
  version "0.0.4"
  sha256 "f80f1338f521d86fb0ae2792826ef9296ef3e92932453227fd30f46db677ad64"

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
