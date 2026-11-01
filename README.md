# Homebrew tap for Bus Stop

[Bus Stop](https://github.com/static74/BusStop) is a menu bar app that maps the physical ports on your Mac, what is plugged into each one, how fast each link runs and how much power flows through it.

## Install

```bash
brew install --cask static74/busstop/busstop
```

That taps this repository, installs `Bus Stop.app` in `/Applications` and links the `busstop` command-line tool into Homebrew's `bin`. Bus Stop needs macOS 26 or later.

## Updates

Bus Stop can update itself: the first time it opens it asks whether to install updates automatically, and Settings › General changes the answer. Because the app can update itself, the cask declares `auto_updates true`, so a plain `brew upgrade` skips it. If you leave automatic updates off and want Homebrew to update Bus Stop, run:

```bash
brew upgrade --cask --greedy busstop
```

## Uninstall

```bash
brew uninstall --cask busstop
```

Add `--zap` to also delete the saved history, the preferences and the widgets' data.

## About this repository

The cask is generated. Its source is [`packaging/homebrew/Casks/busstop.rb`](https://github.com/static74/BusStop/blob/main/packaging/homebrew/Casks/busstop.rb) in the Bus Stop repository, and the release workflow pushes the new version and checksum here after each release. Changes to the cask belong there.
