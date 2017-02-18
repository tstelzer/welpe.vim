WELPE.vim 
==========

Dark color scheme for [vim](https://www.vim.org).

PALETTE
-------

![#1c1c1c](http://placehold.it/20/1c1c1c/000000?text=+) `gray1 #121212 (234)`

![#262626](http://placehold.it/20/262626/000000?text=+) `gray2 #262626 (237)`

![#3a3a3a](http://placehold.it/20/3a3a3a/000000?text=+) `gray4 #262626 (237)`

![#000087](http://placehold.it/20/000087/000000?text=+) `darkblue #000087 (18)`

![#005f00](http://placehold.it/20/005f00/000000?text=+) `darkgreen #005f00 (22)`

![#5f0000](http://placehold.it/20/5f0000/000000?text=+) `maroon #5f0000 (52)`

![#87afff](http://placehold.it/20/87afff/000000?text=+) `maya #87afff (111)`

![#ff87af ](http://placehold.it/20/ff87af/000000?text=+) `pale pink #ff87af (211)`

![#afd7af](http://placehold.it/20/afd7af/000000?text=+) `moss #afd7af (151)`

![#afffff](http://placehold.it/20/afffff/000000?text=+) `pale turquoise #afffff (159)`

![#d75f5f](http://placehold.it/20/d75f5f/000000?text=+) `roman #d75f5f (160)`

![#ffaf00](http://placehold.it/20/ffaf00/000000?text=+) `orange #ffaf00 (214)`

![#ffffaf](http://placehold.it/20/ffffaf/000000?text=+) `shalimar #ffffaf (229)`

![#808080](http://placehold.it/20/808080/000000?text=+) `neutral #808080 (244)`

![#dadada](http://placehold.it/20/dadada/000000?text=+) `gray21 #dadada (253)`

![#ffffff](http://placehold.it/20/ffffff/000000?text=+) `truewhite #ffffff (15)`

PREVIEW
-------

#### win64 gvim +lightline plugin
(off the top of my head) relevant settings: 

      set number relativenumber 
      set cursorline

###### in splits, with tab open

![preview splits and tabs](img/gvim01.png)

###### visual selection

![preview visual selection](img/gvim02.png)

###### search, incsearch

![preview searching](img/gvim03.png)

###### sneak plugin

![preview sneak plugin](img/gvim04.gif)

###### ctrlp plugin

![preview ctrlp plugin](img/gvim05.png)

*todo: add console preview*

INSTALLATION
------------

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

TESTED PLUGINS
--------------

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

TESTED FILETYPES
----------------

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

NEXT UP
-------

* fixing python and pandoc
* everything error/warning

CHANGELOG
---------

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
