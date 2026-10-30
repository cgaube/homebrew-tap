# cgaube/homebrew-tap

Homebrew formulas for my tools.

## Install

```sh
brew install cgaube/tap/<formula>
```

Or tap first, then install by name:

```sh
brew tap cgaube/tap
brew install <formula>
```

Or in a `Brewfile` for `brew bundle`:

```ruby
tap "cgaube/tap"
brew "<formula>"
```

## Available formulas

Browse [`Formula/`](Formula/), or run `brew search cgaube/tap/` after tapping.

## Maintenance

Each tool's release workflow updates its formula, so don't edit versions and
checksums by hand.
