# cgaube/homebrew-tap

Homebrew formulas for my tools.

## Install

Homebrew 6 runs code from third-party taps only after you
[trust it](https://docs.brew.sh/Tap-Trust). Installing by full name trusts that
formula only:

```sh
brew install cgaube/tap/<formula>
```

Or tap first, trust the formula, then install it by name:

```sh
brew tap cgaube/tap
brew trust --formula cgaube/tap/<formula>
brew install <formula>
```

Or in a `Brewfile` for `brew bundle`:

```ruby
tap "cgaube/tap"
brew "cgaube/tap/<formula>", trusted: true
```

To trust every current and future formula in this tap, run
`brew trust cgaube/tap`. Homebrew recommends trusting single formulas instead.

## Available formulas

Browse [`Formula/`](Formula/), or run `brew search cgaube/tap/` after tapping.

## Maintenance

Each tool's release workflow updates its formula, so don't edit versions and
checksums by hand.
