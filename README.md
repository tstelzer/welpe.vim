![Welpe Colorwheel](img/colorwheel.png)

WELPE.vim 
===========

Dark colorscheme for vim, with a mixture of bright, saturated highlights
and pale, low-key colors. Uses exclusively colors from the 256-color-range, so it should look identical in gvim and vim.

CHANGELOG
---------

v0.1.2  

        Adds consistent colors for dirvish, syntastic, incsearch

        Various cleanups, some miniscule changes

v0.1.1  

        Adds readable diff colors

## PALETTE

![gray0](img/_gray0.png) `gray0 #121212 (233)`

![gray2](img/_gray2.png) `gray2 #262626 (237)`

![gray4](img/_gray4.png) `gray4 #3a3a3a (237)`

![darkblue](img/_darkblue.png) `darkblue #000087 (18)`

![darkgreen](img/_darkgreen.png) `darkgreen #005f00 (22)`

![maroon](img/_maroon.png) `maroon #5f0000 (52)`

![maya](img/_maya.png) `maya #87afff (111)`

![mediumorchid](img/_mediumorchid.png) `medium orchid #af5fd7 (134)`

![moss](img/_moss.png) `moss #afd7af (151)`

![paleturqoise](img/_paleturquoise.png) `pale turquoise #afffff (159)`

![roman](img/_roman.png) `roman #d75f5f (160)`

![orange](img/_orange.png) `orange #ffaf00 (214)`

![shalimar](img/_shalimar.png) `shalimar #ffffaf (229)`

![gray10](img/_gray10.png) `gray10 #808080 (244)`

![gray21](img/_gray21.png) `gray21 #dadada (253)`

![white](img/_white.png) `white #eeeeee (255)`

## PREVIEW

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

## INSTALLATION

#### via vundle

`Plugin 'tstelzer/welpe.vim'`

`:PluginInstall`

#### via vimplug

`Plug 'tstelzer/welpe.vim'`

`:PlugInstall`

#### manual download

- place [tstelzer/welpe.vim/master/colors/welpe.vim](https://raw.githubusercontent.com/tstelzer/welpe.vim/master/colors/welpe.vim) in `~/<yourvimdir>/colors/`
- if you want lightline support, place [tstelzer/welpe.vim/master/autoload/lightline/colorscheme/welpe.vim](https://raw.githubusercontent.com/tstelzer/welpe.vim/master/autoload/lightline/colorscheme/welpe.vim) in `~/<yourvimdir>/autoload/`

#### enable colorscheme

add the following line *after* `:syntax enable`

`colorscheme welpe`

#### using lightline?

find your lightline settings and add `'colorscheme': 'welpe',` to the top, like:

```
let g:lightline = {
    \ 'colorscheme': 'welpe',
    // more lightline settings
```

#### additional options

all-bold

`let g:welpe_all_bold = 1`

use italics

`let g:welpe_use_italics = 1`

## KNOWN PROBLEMS

- Diffs are still a bit iffy, mostly due to my own restriction to the 256-color-range; 
might use a wider range in the future
- Tried to make it work with ConEmu (windows), but the hassle is not worth the mediocre result
- `g:welpe_use_italics` and `g:welpe_all_bold` broke somewhere along the way

## TESTED PLUGINS
*other plugins might very well still work, depending on what highlight groups
they are using; the listed are simply the ones that I have tested and / or
modified*

- [x] [Lightline](https://github.com/itchyny/lightline.vim)
see screenshots for reference, if your setup doesnt work, feel free to open an issue

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
  color, to differenciate folder, file and filetype

## TESTED FILETYPES
*other filetypes might very well still work, depending on what highlight groups
they are using; the listed are simply the ones that I have tested and / or
modified*

**Important:** The effect of colorschemes is depending on the runtimefiles *you* are using. If colors are flawed,
chances are, you are using "bad" runtimefiles, many defaults are not up-to-date.

- [x] HTML (recommended: [othree/html5.vim](https://github.com/othree/html5.vim))
- [x] PHP
- [x] CSS (recommended: [JulesWang/css.vim](https://github.com/JulesWang/css.vim) and [hail2u/vim-css3-syntax](https://github.com/hail2u/vim-css3-syntax))
- [x] SCSS (recommended:
  [cakebaker/scss-syntax.vim](https://github.com/cakebaker/scss-syntax.vim))
- [x] JS (recommended: [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript))
