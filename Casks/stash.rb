cask "stash" do
  version "0.1.1"
  sha256 "fb3542b7b01c8e8befe633e30ee605cbad437371d9a43f6e0d0d9a115f3a82d3"

  url "https://github.com/sulemaanhamza/stash/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "File clipboard for the macOS menu bar — drag in, drag out"
  homepage "https://github.com/sulemaanhamza/stash"

  depends_on macos: ">= :ventura"

  app "Stash.app"

  zap trash: [
    "~/Library/Application Support/Stash",
    "~/Library/Preferences/com.sulemaanhamza.stash.plist",
    "~/Library/Saved Application State/com.sulemaanhamza.stash.savedState",
  ]
end
