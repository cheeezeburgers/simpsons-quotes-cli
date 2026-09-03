#!/bin/sh

set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
install_dir="$HOME/.local/bin"
target="$install_dir/simpsons"

mkdir -p "$install_dir"
cp "$script_dir/simpsons" "$target"
chmod +x "$target"

printf 'Installed simpsons at %s\n' "$target"

case ":$PATH:" in
    *":$install_dir:"*) ;;
    *)
        printf '\nAdd this directory to your PATH:\n'
        printf '%s\n' '  export PATH="$HOME/.local/bin:$PATH"'
        ;;
esac
