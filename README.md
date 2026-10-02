# homebrew-tap

A Homebrew tap for macOS casks and formulae.

## Install

```sh
brew tap oa/tap
brew install --cask oa/tap/buskill
brew install --cask oa/tap/cua-driver
brew install --cask oa/tap/kaset
brew install --cask oa/tap/kraken-desktop
brew install --cask oa/tap/tickerbox-cli
brew install oa/tap/aderyn
brew install oa/tap/alcless
brew install oa/tap/ax
brew install oa/tap/beankeeper
brew install oa/tap/blacksmith
brew install oa/tap/bore
brew install oa/tap/canopy
brew install oa/tap/captainhook-bin
brew install oa/tap/cargo-bundle-licenses
brew install oa/tap/codex-security
brew install oa/tap/docker-rollout
brew install oa/tap/gh-secure
brew install oa/tap/heimdall-rs
brew install oa/tap/knip
brew install oa/tap/kumo
brew install oa/tap/mergetopus
brew install oa/tap/mewt
brew install oa/tap/muton
brew install oa/tap/ofelia
brew install oa/tap/pgrun
brew install oa/tap/phanalist
brew install oa/tap/pplx
brew install oa/tap/proton-cli
brew install oa/tap/pzip
brew install oa/tap/quill
brew install oa/tap/rustfilt
brew install oa/tap/smolvm
brew install oa/tap/snarkjs
brew install oa/tap/treepeat
brew install oa/tap/unregistry
brew install oa/tap/vencord-installer
brew install oa/tap/vize
```

| Cask | Application |
| --- | --- |
| `buskill` | [Laptop kill cord](https://www.buskill.in/) |
| `cua-driver` | [Computer-use driver](https://cua.ai/docs/cua-driver) |
| `kaset` | [YouTube and YouTube Music app](https://github.com/sozercan/kaset) |
| `kraken-desktop` | [Trading terminal](https://www.kraken.com/desktop) |
| `tickerbox-cli` | [TickerBox device REST client](https://github.com/openbunny/tickerbox-cli) |

| Formula | Tool |
| --- | --- |
| `aderyn` | [Solidity static analyzer](https://github.com/Cyfrin/aderyn) |
| `alcless` | [Sandbox for Homebrew and agent commands](https://github.com/AkihiroSuda/alcless) |
| `ax` | [Agent workload orchestrator for Kubernetes](https://github.com/google/ax) |
| `beankeeper` | [Double-entry accounting CLI](https://github.com/Govcraft/beankeeper) |
| `blacksmith` | [CI runner CLI](https://blacksmith.sh) |
| `bore` | [TCP tunnel to localhost](https://github.com/ekzhang/bore) |
| `canopy` | [Local runner, linter and language server for Actions workflows](https://github.com/ferranbt/canopy) |
| `captainhook-bin` | [Git hook manager](https://github.com/captainhook-git/captainhook-bin) |
| `cargo-bundle-licenses` | [Dependency license bundler for Cargo](https://github.com/sstadick/cargo-bundle-licenses) |
| `codex-security` | [TypeScript SDK and CLI](https://github.com/openai/codex-security) |
| `docker-rollout` | [Zero-downtime Docker Compose deployment](https://github.com/wowu/docker-rollout) |
| `gh-secure` | [GitHub CLI extension for repository security features](https://github.com/GitHubSecurityLab/gh-secure) |
| `heimdall-rs` | [EVM bytecode decompiler and toolkit](https://github.com/Jon-Becker/heimdall-rs) |
| `knip` | [Unused export finder](https://knip.dev) |
| `kumo` | [AWS service emulator](https://github.com/sivchari/kumo) |
| `mergetopus` | [Per-conflict branch splitting for complex merges](https://github.com/mwallner/mergetopus) |
| `mewt` | [Mutation testing framework](https://github.com/trailofbits/mewt) |
| `muton` | [TON mutation testing](https://github.com/trailofbits/muton) |
| `ofelia` | [Docker job scheduler](https://github.com/mcuadros/ofelia) |
| `pgrun` | [Create, use, and delete disposable PGRun Postgres branches](https://pgrun.dev) |
| `phanalist` | [PHP static analyzer](https://github.com/denzyldick/phanalist) |
| `pplx` | [Perplexity AI CLI](https://github.com/perplexityai/perplexity-cli) |
| `proton-cli` | [CLI for Proton Mail, Drive, Calendar, Pass and Contacts](https://github.com/roman-16/proton-cli) |
| `pzip` | [Concurrent zip archiver and extractor](https://github.com/ybirader/pzip) |
| `quill` | [Mac binary signing from any platform](https://github.com/anchore/quill) |
| `rustfilt` | [Rust symbol demangler](https://github.com/luser/rustfilt) |
| `smolvm` | [Branchable local VM for agents](https://github.com/smol-machines/smolvm) |
| `snarkjs` | [zkSNARK and PLONK implementation](https://github.com/iden3/snarkjs) |
| `treepeat` | [Duplicate code finder over tree-sitter ASTs](https://github.com/dsummersl/treepeat) |
| `unregistry` | [Push Docker images to remote servers without a registry](https://github.com/psviderski/unregistry) |
| `vencord-installer` | [Vencord installer CLI](https://github.com/Vencord/Installer) |
| `vize` | [Vue.js toolchain in Rust](https://github.com/ubugeeei-prod/vize) |

`alcless`, `beankeeper`, `blacksmith`, `canopy`, `codex-security`, `knip`,
`mewt`, `muton`, `pgrun`, `pplx`, `proton-cli`, `rustfilt`, `smolvm`, `snarkjs`
and `vencord-installer` install on Apple Silicon only. `aderyn`, `ax`, `bore`,
`captainhook-bin`, `cargo-bundle-licenses`, `docker-rollout`, `gh-secure`,
`heimdall-rs`, `kumo`, `mergetopus`, `ofelia`, `phanalist`, `pzip`, `quill`,
`treepeat`, `unregistry` and `vize` install on Intel as well. `kaset` requires
macOS Sequoia or later.

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
brew uninstall --zap --cask oa/tap/buskill oa/tap/cua-driver oa/tap/kaset \
  oa/tap/kraken-desktop oa/tap/tickerbox-cli
```
