cask "padvibe" do
  arch arm: "arm64", intel: "x86_64"

  version "1.10.0"
  sha256 arm:   "f2d43c6ec524d9a0cb83a058f79f7a3a0bf1a6ba913dc9fbe611acfff9aabd75",
         intel: "8cc38522ded66ae9139e8abcf761685663b727d2cbcbedfa14a6e67ad19b1cc6"

  url "https://github.com/shabeer-wms/padvibe/releases/download/v#{version}/PadVibe-#{version}-macos-#{arch}.dmg"
  name "PadVibe"
  desc "Free soundboard for podcasters, streamers and live shows"
  homepage "https://padvibe.pro26.in"

  app "PadVibe.app"

  zap trash: [
    "~/Library/Application Support/com.pro26.pads",
    "~/Library/Preferences/com.pro26.pads.plist",
    "~/Library/Saved Application State/com.pro26.pads.savedState",
  ]
end
