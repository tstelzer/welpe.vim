# WELPE.vim

Dark color scheme for [vim](https://www.vim.org).

## PALETTE

![#1c1c1c](img/GRAY1.jpg) `gray1 #121212 (234)`

![#262626](img/GRAY2.jpg) `gray2 #262626 (237)`

![#3a3a3a](img/GRAY4.jpg) `gray4 #262626 (237)`

![#000087](img/DARKBLUE.jpg) `darkblue #000087 (18)`

![#005f00](img/DARKGREEN.jpg) `darkgreen #005f00 (22)`

![#5f0000](img/MAROON.jpg) `maroon #5f0000 (52)`

![#87afff](img/MAYA.jpg) `maya #87afff (111)`

![#ff87af](img/PALEPINK.jpg) `palepink #ff87af (211)`

![#afd7af](img/MOSS.jpg) `moss #afd7af (151)`

![#afffff](img/PALETURQUOISE.jpg) `paleturquoise #afffff (159)`

![#d75f5f](img/ROMAN.jpg) `roman #d75f5f (160)`

![#ffaf00](img/ORANGE.jpg) `orange #ffaf00 (214)`

![#ffffaf](img/SHALIMAR.jpg) `shalimar #ffffaf (229)`

![#808080](img/GRAY10.jpg) `neutral #808080 (244)`

![#dadada](img/GRAY20.jpg) `gray20 #d0d0d0 (252)`

![#ffffff](img/TRUEWHITE.jpg) `truewhite #ffffff (15)`

## PREVIEW

    OS: Ubuntu
    WM: i3wm
    Terminal: Alacritty, tmux + zsh (xterm-256color)

Config: [github.com/tstelzer/dotfiles](https://github.com/tstelzer/dotfiles/blob/master/.vim/vimrc)

* visual mode, with folds

![welpe1](img/welpe1.jpg)

* searching, with `incsearch` and `hlsearch`

![welpe2](img/welpe2.jpg)

## INSTALLATION

#### via vundle

`Plugin 'tstelzer/welpe.vim'`

`:PluginInstall`

#### via vimplug

`Plug 'tstelzer/welpe.vim'`

`:PlugInstall`

#### manual download

- place [tstelzer/welpe.vim/master/colors/welpe.vim](https://raw.githubusercontent.com/tstelzer/welpe.vim/master/colors/welpe.vim) in `~/<yourvimdir>/colors/`

#### enable colorscheme

add the following line *after* `:syntax enable`

`colorscheme welpe`

## NEXT UP

* fixing python and pandoc
* everything error/warning
