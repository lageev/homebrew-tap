cask "focusmic" do
  version "0.0.3"
  sha256 "93d4f2512c8c67fad52e7937cb05aa25f0553abbf9dd2a5f3efc795be16f4245"

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
