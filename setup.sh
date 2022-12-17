#!/usr/bin/env bash

### Remove motd files ###
rm -rf $PREFIX/etc/motd*

### Zap zsh plugin manager ###
sh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.sh)

### Slowly neovim plugin manager ###
wget -O slowly.tar.gz $(curl -s https://api.github.com/repos/nat-418/slowly.nvim/releases/latest | grep "tarball" | cut -d\" -f4 | grep "https")
tar -xvf slowly.tar.gz
cp -i nat-418-slowly.nvim-d4aaafc/lua/slowly.lua ./nvim/lua/
rm -rf nat-418-slowly.nvim-d4aaafc slowly.tar.gz

### Cozette font ###
wget -O font.ttf $(curl -s https://api.github.com/repos/slavfox/Cozette/releases/latest | grep "CozetteVector.ttf" | cut -d\" -f4 | grep "https")
mv -i font.ttf ~/.termux/

### Update symlinks ###
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

function update_symlink {
	local file=$1
	local destination=$2
	ln -sf "$SCRIPT_DIR/$file" "$destination"
}

mkdir ~/.config/

update_symlink termux/termux.properties ~/.termux/termux.properties
update_symlink termux/colors.properties ~/.termux/colors.properties
update_symlink scripts/compiler ~/.local/bin/compiler
update_symlink scripts/opout ~/.local/bin/opout
update_symlink nvim ~/.config/
update_symlink awesome ~/.config/
update_symlink bashrc ~/.bashrc
update_symlink zshrc ~/.zshrc
