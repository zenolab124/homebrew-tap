cask "monet" do
  version "1.0.4"
  sha256 "d5d3d0d7f454ef12a4ccab3c23baecdd2e5c3cd120d3975ac9d37a722d1b489b"

  url "https://github.com/zenolab124/monet/releases/download/v#{version}/Monet_#{version}_aarch64.dmg"
  name "Monet"
  desc "Mission Control for Claude Code"
  homepage "https://github.com/zenolab124/monet"

  livecheck do
    url "https://github.com/zenolab124/monet"
    strategy :github_latest
  end

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
    Or install with: brew install --cask --no-quarantine monet
    Subsequent updates install silently in-app.
  EOS
end
