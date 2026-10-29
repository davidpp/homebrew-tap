# davidpp/homebrew-tap

Homebrew formulae for [davidpp](https://github.com/davidpp)'s tools.

```sh
brew install davidpp/tap/kosse
```

| Formula | What it is |
| ------- | ---------- |
| [`kosse`](Formula/kosse.rb) | [Kossé](https://github.com/davidpp/kosse): a macOS menu-bar app and local dashboard for the development services already running on your Mac (Apple silicon). |

Each formula installs exactly one release archive from its project's GitHub Releases, pinned by SHA-256. The release workflow of each project commits its formula here; edit the template in that project, not this file.

Kossé is not code-signed or notarized. Homebrew downloads without a quarantine attribute, so the ad-hoc-signed binary runs. To start it at each login, enable it from the linked path so upgrades keep working: `$(brew --prefix)/bin/kosse startup enable`.
