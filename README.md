# homebrew-tap

A Homebrew tap for macOS casks and formulae.

## Install

```sh
brew tap oa/tap
brew install --cask oa/tap/<cask-name>
brew install oa/tap/<formula-name>
```

List available packages:

```sh
brew search oa/tap/
```

## Upgrade

```sh
brew upgrade
```

## Remove

```sh
brew uninstall --zap --cask oa/tap/<cask-name>
brew uninstall oa/tap/<formula-name>
```

## Notes

- Casks are macOS applications; formulae are command-line tools.
- Some packages are Apple Silicon only, some support both architectures.
- Check individual package caveats with `brew info --cask oa/tap/<name>` or `brew info oa/tap/<name>`.