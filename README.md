# homebrew-stash

Homebrew tap for [Stash](https://github.com/sulemaanhamza/stash) — a file clipboard for the macOS menu bar.

## Install

```sh
brew tap sulemaanhamza/stash
brew install --cask stash
xattr -d com.apple.quarantine /Applications/Stash.app
```

The third line matters. Stash is unsigned (no Apple Developer ID), and Homebrew applies macOS's quarantine attribute by default to cask installs — without removing it, Gatekeeper refuses to launch the app with a "cannot be verified" warning. The `xattr` command strips that attribute. (Homebrew used to support `--no-quarantine` for this; it's been disabled in recent versions.)

After that, look for the tray icon in your menu bar.

## Update

```sh
brew upgrade --cask stash
```

When a new Stash release is published, this tap is bumped and `brew upgrade` will pick it up.

## Uninstall

```sh
brew uninstall --cask stash
```

To also remove your saved stash list and preferences:

```sh
brew uninstall --cask --zap stash
```

## Why a personal tap?

The official `homebrew-cask` repo doesn't accept unsigned apps from new submitters. A personal tap is the standard alternative for free / open-source apps that don't have an Apple Developer ID.

## License

MIT — see the [main repo](https://github.com/sulemaanhamza/stash/blob/main/LICENSE).
