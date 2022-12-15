#!/usr/bin/env bash

### Zap zsh plugin manager ###
sh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.sh)

### Slowly neovim plugin manager ###
wget -O slowly.tar.gz $(curl -s https://api.github.com/repos/nat-418/slowly.nvim/releases/latest | grep "tarball" | cut -d\" -f4 | grep "https")
tar -xvf slowly.tar.gz
cp -i nat-418-slowly.nvim-d4aaafc/lua/slowly.lua ./nvim/lua/
rm -rf nat-418-slowly.nvim-d4aaafc slowly.tar.gz

### Update symlinks ###
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

function update_symlink {
	local file=$1
	local destination=$2
	ln -sf "$SCRIPT_DIR/$file" "$destination"
}

mkdir ~/.config/

update_symlink nvim ~/.config/
update_symlink awesome ~/.config/
update_symlink bashrc ~/.bashrc
update_symlink zshrc ~/.zshrc
