cask "stash" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
