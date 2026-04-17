cask "homebrew-pong-macos" do
  version "0.9.0-MAC"
  sha256 "cac00a0c69132237ad3920849ef4786592b64358876cbfa59c449e965f66e30e"

  url "https://github.com/TheLinuxGroup/Pong/releases/download/v#{version}/Pong-macos.tar.gz"
  name "Pong"
  desc "Pong game in GDScript for macOS"
  homepage "https://github.com/TheLinuxGroup/Pong"

  # Homebrew will unpack the .tar.gz and look for this .app folder inside
  app "Pong.app"

  zap trash: [
    "~/Library/Application Support/Godot/app_userdata/Pong",
    "~/Library/Saved Application State/org.godotengine.pong.savedState",
  ]
end
