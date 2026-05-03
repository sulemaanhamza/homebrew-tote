cask "tote" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/sulemaanhamza/tote/releases/download/v#{version}/Tote-#{version}.zip"
  name "Tote"
  desc "File clipboard for the macOS menu bar — drag in, drag out"
  homepage "https://github.com/sulemaanhamza/tote"

  depends_on macos: ">= :ventura"

  app "Tote.app"

  zap trash: [
    "~/Library/Application Support/Tote",
    "~/Library/Preferences/com.sulemaanhamza.tote.plist",
    "~/Library/Saved Application State/com.sulemaanhamza.tote.savedState",
  ]
end
