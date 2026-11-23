# homebrew-cask

Homebrew tap for [DishyWarden](https://github.com/arielxinzheng/DishyWarden) —
a Starlink terminal monitor (latency, packet loss, obstruction map, alerting).

## Install

```bash
brew tap arielxinzheng/cask
brew trust arielxinzheng/cask        # Homebrew 7 asks you to trust third-party taps
brew install --cask dishywarden
```

The cask picks the disk image that matches the machine: `arm64` on Apple
Silicon, `x64` on Intel.

## Update the cask

The cask points at a GitHub Release. When a new version ships, bump the
`version`, replace both `sha256` values with the checksums of the published
disk images, and update the download URLs.

```bash
# checksums of the published images
curl -sL -o /tmp/arm64.dmg https://github.com/arielxinzheng/DishyWarden/releases/download/v1.0.1/DishyWarden-1.0.1-mac-arm64.dmg
shasum -a 256 /tmp/arm64.dmg
```

## Notes

- macOS builds are unsigned, so the first launch needs an explicit allow in
  *System Settings → Privacy & Security*.
- Automatic updates are Windows-only; macOS users install new versions by
  re-running the cask.
