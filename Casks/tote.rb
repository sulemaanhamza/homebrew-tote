cask "tote" do
  version "0.1.5"
  sha256 "6ba69decc7a7196b726274286bae81975116680dfdbf12ab4dda16913aaa4a68"

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
