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

![#808080](img/NEUTRAL.jpg) `neutral #808080 (244)`

![#dadada](img/GRAY21.jpg) `gray21 #dadada (253)`

![#ffffff](img/TRUEWHITE.jpg) `truewhite #ffffff (15)`

## PREVIEW

    OS: Ubuntu
    WM: i3wm
    Terminal: Alacritty, tmux, zsh

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

## TESTED PLUGINS

*legend*
- [x] **tested || works well**
- [ ] **to-be-tested || awful**

*unlisted plugins might very well still work, depending on what highlight groups
they are using; the listed are simply the ones that I have tested and / or
modified*

- [x] [GitGutter](https://github.com/airblade/vim-gitgutter)
- [x] Diffs: finally readable, see screenshots
- [x] [vim-sneak](https://github.com/justinmk/vim-sneak) colors consistent with
search, specifically streak-mode and overlay colors
- [x] [incsearch](https://github.com/haya14busa/incsearch.vim) colors consistent
with search
- [x] [syntastic](https://github.com/scrooloose/syntastic) made the inline-error
messages less obnoxious
- [x] [dirvish](https://github.com/justinmk/vim-dirvish) 
- [ ] [ctrlp](https://github.com/ctrlpvim/ctrlp.vim) would still prefer more
color, to differentiate folder, file and file type

#### note on lightline support

I have removed the lightline config for the following reasons:

- It is a very specific implementation of a statusline, other plugins get left out
so I would rather not support any than all of them.
- I stopped using it myself, so updates would be half-arsed and infrequent.
- The additional files in the repo could lead to confusion. This is a colorscheme and 
should only consist of the colorscheme file itself.

On the same note, if you are interested in making your own statusline without using any
plugin dependencies, check out [this blog post](http://got-ravings.blogspot.de/2008/08/vim-pr0n-making-statuslines-that-own.html).

## TESTED FILETYPES

*legend*
- [x] **tested** and/or **works well**
- [ ] **to-be-tested** and/or **awful**

*unlisted filetypes might very well still work, depending on what highlight groups
they are using; the listed are simply the ones that I have tested and / or
modified*

**Important:** The effect of color schemes is depending on the runtime files *you* are using. If colors are flawed,
chances are, you are using "bad" runtime files, many defaults are not up-to-date.

- [x] HTML (recommended: [othree/html5.vim](https://github.com/othree/html5.vim))
- [x] PHP
- [x] CSS (recommended: [JulesWang/css.vim](https://github.com/JulesWang/css.vim) and [hail2u/vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax))
- [x] SCSS (recommended: [cakebaker/scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim))
- [x] JavaScript (recommended: [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript))
- [x] Markdown
- [ ] Pug (formerly Jade)
  [ ] Python
  [ ] Pandoc-things

## NEXT UP

* fixing python and pandoc
* everything error/warning

## CHANGELOG

v0.2.1

    lighten the darkbg color
    lighten the lightfg color

    remove statusline usergroups
    colorize statusline with moss green

    make error messages more prevalent

    differentiate search from incsearch

    various smaller fixes

v0.2.0

    add markdown support

    modify javascript

    de-emphasizing delimiters

    remove italic styling entirely
    remove all-bold option
    remove lightline support

    add statusline usercolor option

    heat up by swapping out mediumorchid (rich purple) for palepink (hot & pale
    pink)

    use roman (lightred) for Identifiers

    simplify colorscheme file

v0.1.2

    add consistent colors for dirvish, syntastic, incsearch

    various cleanups, some miniscule changes

v0.1.1

    add readable diff colors
