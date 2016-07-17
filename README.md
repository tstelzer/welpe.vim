![Welpe Colorwheel](img/colorwheel.png)

WELPE.vim 
===========

Dark colorscheme for vim, with a mixture of bright, saturated highlights
and pale, low-key colors. Uses excusively colors from the 256-color-range, so it should look identical in gvim and vim.

CHANGELOG
---------

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

![GVIM preview 1](img/gvim-welpe-preview-1.jpg)
![GVIM preview 2](img/gvim-welpe-preview-2.jpg)

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

## TESTED PLUGINS

- [x] *Lightline* (see screenshots for reference, if your setup doesnt work, feel free to open an issue)

- [x] GitGutter

- [x] Diff (finally readable, see screenshots)

## TESTED FILETYPES

- [x] HTML
- [x] PHP
- [x] CSS / SCSS (any problems here are mostly comming from runtimefiles, not highlighting)
- [ ] JS (works, but currently not coding enough to properly judge the quality )
