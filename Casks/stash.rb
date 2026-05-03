cask "stash" do
  version "0.1.0"
  sha256 "7e3a6a5e283399d618b9302215bb77ec8449d6fa0408480b211c1c2730b2880d"

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
