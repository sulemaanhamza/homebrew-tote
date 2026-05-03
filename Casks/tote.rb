cask "tote" do
  version "0.1.6"
  sha256 "152fb2e60ec8a4a45f07aa0a6b3d8387507835d991764285c6407c5e115cf8fa"

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
