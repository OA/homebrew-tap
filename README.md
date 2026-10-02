# homebrew-tap

A Homebrew tap for macOS casks and formulae.

## Install

```sh
brew tap oa/tap
brew install --cask oa/tap/buskill
brew install --cask oa/tap/cua-driver
brew install --cask oa/tap/kraken-desktop
brew install oa/tap/alcless
brew install oa/tap/ax
brew install oa/tap/beankeeper
brew install oa/tap/blacksmith
brew install oa/tap/canopy
brew install oa/tap/codex-security
brew install oa/tap/gh-secure
brew install oa/tap/knip
brew install oa/tap/mergetopus
brew install oa/tap/mewt
brew install oa/tap/muton
brew install oa/tap/pgrun
brew install oa/tap/pplx
brew install oa/tap/proton-cli
brew install oa/tap/rustfilt
brew install oa/tap/treepeat
brew install oa/tap/vencord-installer
brew install oa/tap/vize
```

| Cask | Application |
| --- | --- |
| `buskill` | [Laptop kill cord](https://www.buskill.in/) |
| `cua-driver` | [Computer-use driver](https://cua.ai/docs/cua-driver) |
| `kraken-desktop` | [Trading terminal](https://www.kraken.com/desktop) |

| Formula | Tool |
| --- | --- |
| `alcless` | [Sandbox for Homebrew and agent commands](https://github.com/AkihiroSuda/alcless) |
| `ax` | [Agent workload orchestrator for Kubernetes](https://github.com/google/ax) |
| `beankeeper` | [Double-entry accounting CLI](https://github.com/Govcraft/beankeeper) |
| `blacksmith` | [CI runner CLI](https://blacksmith.sh) |
| `canopy` | [Local runner, linter and language server for Actions workflows](https://github.com/ferranbt/canopy) |
| `codex-security` | [TypeScript SDK and CLI](https://github.com/openai/codex-security) |
| `gh-secure` | [GitHub CLI extension for repository security features](https://github.com/GitHubSecurityLab/gh-secure) |
| `knip` | [Unused export finder](https://knip.dev) |
| `mergetopus` | [Per-conflict branch splitting for complex merges](https://github.com/mwallner/mergetopus) |
| `mewt` | [Mutation testing framework](https://github.com/trailofbits/mewt) |
| `muton` | [TON mutation testing](https://github.com/trailofbits/muton) |
| `pgrun` | [Create, use, and delete disposable PGRun Postgres branches](https://pgrun.dev) |
| `pplx` | [Perplexity AI CLI](https://github.com/perplexityai/perplexity-cli) |
| `proton-cli` | [CLI for Proton Mail, Drive, Calendar, Pass and Contacts](https://github.com/roman-16/proton-cli) |
| `rustfilt` | [Rust symbol demangler](https://github.com/luser/rustfilt) |
| `treepeat` | [Duplicate code finder over tree-sitter ASTs](https://github.com/dsummersl/treepeat) |
| `vencord-installer` | [Vencord installer CLI](https://github.com/Vencord/Installer) |
| `vize` | [Vue.js toolchain in Rust](https://github.com/ubugeeei-prod/vize) |

`alcless`, `beankeeper`, `blacksmith`, `canopy`, `codex-security`, `knip`,
`mewt`, `muton`, `pgrun`, `pplx`, `proton-cli`, `rustfilt` and
`vencord-installer` install on Apple Silicon only. `ax`, `gh-secure`,
`mergetopus`, `treepeat` and `vize` install on Intel as well.

## BusKill

Upstream's macOS build is ad-hoc signed. Gatekeeper blocks the first Finder
launch, and removing `com.apple.quarantine` does not bypass that check.

| Step | Action |
| --- | --- |
| 1 | Dismiss the dialog with `Done`, not `Move to Trash` |
| 2 | System Settings > Privacy & Security > `Open Anyway` |
| 3 | Select the installed `buskill-v*.app` |

The CLI is not subject to that block.

```sh
buskill --help
buskill --list-triggers
buskill -a
```

BusKill is x86_64 and requires Rosetta 2 on Apple Silicon.

```sh
softwareupdate --install-rosetta --agree-to-license
```

The app's `-U` updater installs a second copy outside Homebrew. Upgrade it with
Homebrew.

## Cua Driver

CuaDriver.app stays in `/Applications` so macOS retains its Accessibility and
Screen Recording grants.

```sh
cua-driver permissions grant
cua-driver telemetry disable
```

## Vencord Installer

`--branch` has no development entry; patch by location.

```sh
vencord-installer --install --location "/Applications/Discord Development.app"
```

## Upgrade

```sh
brew upgrade --cask --greedy-auto-updates oa/tap/cua-driver oa/tap/kraken-desktop
brew upgrade
```

## Remove

```sh
brew uninstall --zap --cask oa/tap/buskill oa/tap/cua-driver oa/tap/kraken-desktop
```
