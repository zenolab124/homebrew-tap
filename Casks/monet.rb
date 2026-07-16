cask "monet" do
  version "0.1.12"
  sha256 "2e58530cbf91e79756adc1df6a54c594872d5560291a56be381c3d11307fe5d8"

  url "https://github.com/zenolab124/monet/releases/download/v#{version}/Monet_#{version}_aarch64.dmg"
  name "Monet"
  desc "Claude Code session manager and workbench"
  homepage "https://github.com/zenolab124/monet"

  # Monet self-updates in-app (Tauri updater); brew upgrade must not fight it
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "Monet.app"

  zap trash: [
    "~/.monet",
    "~/Library/Application Support/io.github.zenolab124.monet",
    "~/Library/Caches/io.github.zenolab124.monet",
    "~/Library/HTTPStorages/io.github.zenolab124.monet",
    "~/Library/LaunchAgents/io.github.zenolab124.monet.tray.plist",
    "~/Library/Logs/io.github.zenolab124.monet",
    "~/Library/Preferences/io.github.zenolab124.monet.plist",
    "~/Library/Saved Application State/io.github.zenolab124.monet.savedState",
    "~/Library/WebKit/io.github.zenolab124.monet",
  ]

  caveats <<~EOS
    Monet is signed with a stable identity but not yet notarized by Apple.
    On first launch, right-click Monet.app → Open (once), or run:
      xattr -cr /Applications/Monet.app
    Subsequent updates install silently in-app.
  EOS
end
