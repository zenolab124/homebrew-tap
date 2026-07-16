# zenolab124 Homebrew Tap

```bash
brew tap zenolab124/tap
brew install --cask monet
```

[Monet](https://github.com/zenolab124/monet) — Claude Code session manager and workbench.

> First launch requires a one-time Gatekeeper approval (right-click → Open, or `xattr -cr /Applications/Monet.app`). Updates are silent and in-app afterwards; `brew upgrade` intentionally skips this cask (`auto_updates`).

<!-- 维护备忘:每次 Release publish 后同步 version + sha256(shasum -a 256 <dmg>)。 -->
