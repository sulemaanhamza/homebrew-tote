# homebrew-tote

Homebrew tap for [Tote](https://github.com/sulemaanhamza/tote) — a file clipboard for the macOS menu bar.

## Install

```sh
brew tap sulemaanhamza/tote
brew install --cask sulemaanhamza/tote/tote
xattr -d com.apple.quarantine /Applications/Tote.app
```

Use the tap-qualified cask name (`sulemaanhamza/tote/tote`) so brew always picks this cask regardless of any future name collisions in the official cask repo.

The third line matters. Tote is unsigned (no Apple Developer ID), and Homebrew applies macOS's quarantine attribute by default to cask installs — without removing it, Gatekeeper refuses to launch the app with a "cannot be verified" warning. The `xattr` command strips that attribute. (Homebrew used to support `--no-quarantine` for this; it's been disabled in recent versions.)

After that, look for the tray icon in your menu bar.

## Update

```sh
brew upgrade --cask sulemaanhamza/tote/tote
```

When a new Tote release is published, this tap is bumped and `brew upgrade` will pick it up.

## Uninstall

```sh
brew uninstall --cask sulemaanhamza/tote/tote
```

To also remove your saved tote list and preferences:

```sh
brew uninstall --cask --zap sulemaanhamza/tote/tote
```

## Why a personal tap?

The official `homebrew-cask` repo doesn't accept unsigned apps from new submitters. A personal tap is the standard alternative for free / open-source apps that don't have an Apple Developer ID.

## License

MIT — see the [main repo](https://github.com/sulemaanhamza/tote/blob/main/LICENSE).
