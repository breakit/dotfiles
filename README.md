# dotfiles

Meta-repository containing my [nvim](https://github.com/breakit/nvim), [fish](https://github.com/breakit/fish), and [zellij](https://github.com/breakit/zellij) configs as git submodules, in one place.

## Install

```sh
git clone --recurse-submodules https://github.com/breakit/dotfiles ~/dotfiles
~/dotfiles/setup.sh
```

`setup.sh` symlinks each submodule into `~/.config/<app>` (skips existing dirs).

## Update

```sh
git -C ~/dotfiles submodule update --remote
```