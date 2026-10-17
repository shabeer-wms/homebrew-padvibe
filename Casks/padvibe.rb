cask "padvibe" do
  arch arm: "arm64", intel: "x86_64"

  version "1.10.1"
  sha256 arm:   "bcf60d497ea58066b4f8a9887ca229448e6d9df9e253d7487719970e3c79f359",
         intel: "62eb2d02a08f139cd320da07938cedf16d12261a16253389cb85fe794cd4725d"

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
