# zenolab124 Homebrew Tap

```bash
brew install --cask zenolab124/tap/monet
```

The fully qualified name makes Homebrew 6 trust only the Monet cask; no separate
`brew trust` command is needed.

[Monet](https://github.com/zenolab124/monet) is a multi-engine mission control
for coding agents. Stable releases are signed with Developer ID and notarized by
Apple, so the app opens normally after installation.

Monet updates itself in-app. Homebrew therefore treats the cask as auto-updating
and does not replace it during a regular `brew upgrade`.
