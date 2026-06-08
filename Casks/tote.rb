cask "tote" do
  version "0.1.7"
  sha256 "332ee849183004bc4d944d0101cacd3f950528d08f8953682e03dc420a9de1c1"

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
