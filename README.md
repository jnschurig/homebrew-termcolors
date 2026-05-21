# homebrew-termcolors

Homebrew tap for [termcolors](https://github.com/jnschurig/termcolors) — a small CLI that queries the active terminal emulator for its current color palette via OSC escape sequences.

## Install

```sh
brew tap jnschurig/termcolors
brew install termcolors
```

Or, in one line:

```sh
brew install jnschurig/termcolors/termcolors
```

## Update

```sh
brew update && brew upgrade termcolors
```

## Uninstall

```sh
brew uninstall termcolors
brew untap jnschurig/termcolors
```

## Platforms

Prebuilt binaries are provided for:

- macOS (Apple Silicon, Intel)
- Linux (aarch64, x86_64) — statically linked against musl

The formula is updated automatically on every termcolors release.
