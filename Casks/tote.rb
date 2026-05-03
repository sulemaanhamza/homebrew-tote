cask "tote" do
  version "0.1.3"
  sha256 "ce868ae25236c36ca8d072d0d2db63aa82667886db09237cc85e587c62a62f2b"

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
