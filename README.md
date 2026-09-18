# Simpsons CLI Quotes

I wanted a Simpsons-specific quote whenever I open a fresh shell, instead of a
classic quote or `fortune`.

## What it does

`simpsons` displays a random quote with its speaker, season, and episode. The
quote is highlighted in yellow, indented four spaces, and wrapped to fit the
current Terminal width.

On first use, it downloads and caches the quote database at:

```text
~/.local/share/simpsons/quotes.json
```

The downloaded JSON is used unchanged.

## Requirements

- `curl`
- Ruby

Both are included with macOS.

## Installation

```sh
chmod +x install.sh
./install.sh
```

The command is installed as `~/.local/bin/simpsons`.

If `~/.local/bin` is not already in your `PATH`, the installer will show
instructions for adding it.

## Usage

Display a quote:

```sh
simpsons
```

Download the latest version of the quote database:

```sh
simpsons --update
```

## Show a quote at shell startup

Add this line after the `PATH` setup in your shell configuration:

```sh
simpsons
```

| Shell | Configuration file |
| --- | --- |
| Zsh | `~/.zshrc` |
| Bash | `~/.bashrc` |
| Bash login shell on macOS | `~/.bash_profile` |
| Fish | `~/.config/fish/config.fish` |
| Ksh | `~/.kshrc` |

The installed command uses `/bin/sh`, so it can be started from any of these
shells.

## Quote source

The quote database comes from
[erabug/simpsons-quotes](https://github.com/erabug/simpsons-quotes). It is
downloaded unchanged and is not included in this repository.

This is an unofficial fan project and is not affiliated with *The Simpsons* or
its rights holders.
