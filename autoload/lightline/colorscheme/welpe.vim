" ##############################################################################
" Filename: autoload/lightline/colorscheme/welpe.vim
" Description: welpe colorscheme for lightline
" Author: tstelzer <tstelzer@gmail.com>
" Source: github.com/tstelzer/welpe.vim
" Version: 0.1.1
" ##############################################################################

" --- Colors
" ------------------------------------------------------------------------------

let s:_white     = [ '#eeeeee', 255]
let s:_gray21    = [ '#dadada', 253]
let s:_gray10    = [ '#808080', 244]

let s:_gray4     = [ '#3a3a3a', 237]
let s:_gray2     = [ '#262626', 235]
let s:_gray0     = [ '#121212', 233]

let s:_maroon        = [ '#5f0000', 52]
let s:_roman         = [ '#d75f5f', 167]

let s:_darkgreen     = [ '#005F00', 22]
let s:_moss          = [ '#afd7af', 151]

let s:_orange        = [ '#ffaf00', 214]
let s:_shalimar      = [ '#ffffaf', 229]

let s:_darkblue      = [ '#000087', 18]
let s:_maya          = [ '#87afff', 111]

let s:_mediumorchid  = [ '#af5fd7', 134]

let s:_paleturquoise = [ '#afffff', 159]

" --- Palette
" ------------------------------------------------------------------------------

let s:lightfg  = s:_white         " #eeeeee
let s:fg       = s:_gray21        " #dadada
let s:darkfg   = s:_gray10        " #808080

let s:lightbg  = s:_gray4         " #3a3a3a
let s:bg       = s:_gray2         " #262626
let s:darkbg   = s:_gray0         " #121212

let s:darkred  = s:_maroon        " #5f0000
let s:lightred = s:_roman         " #d75f5f

let s:darkgreen= s:_darkgreen     " #005F00
let s:green    = s:_moss          " #afd7af

let s:orange   = s:_orange        " #ffaf00
let s:yellow   = s:_shalimar      " #ffffaf

let s:darkblue = s:_darkblue      " #000087
let s:blue     = s:_maya          " #87afff

let s:magenta  = s:_mediumorchid  " #af5fd7

let s:cyan     = s:_paleturquoise " #afffff

" --- Highlighting
" ------------------------------------------------------------------------------

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:bg,  s:cyan ], [ s:lightfg,  s:lightbg], [ s:lightfg,  s:bg] ]
let s:p.normal.middle   = [ [ s:darkfg, s:darkbg ] ]
let s:p.normal.right    = [ [ s:bg, s:cyan ], [ s:lightfg, s:lightbg ], [ s:lightfg, s:bg ] ]
let s:p.inactive.left   = [ [ s:fg, s:lightbg ],   [ s:lightbg,  s:bg ] ]
let s:p.inactive.right  = [ [ s:darkfg,  s:lightbg ],   [ s:lightbg,  s:lightbg ] ]
let s:p.insert.left     = [ [ s:bg,  s:green],   [ s:lightfg,  s:lightbg ] ]
" let s:p.insert.middle   = [ [ s:lightfg, s:_darkgreen ] ]
let s:p.replace.left    = [ [ s:bg,  s:lightred],     [ s:lightfg,  s:lightbg ] ]
let s:p.visual.left     = [ [ s:lightfg,  s:blue ], [ s:lightfg,  s:lightbg ] ]
" let s:p.visual.middle= [ [ s:lightfg, s:cyan ]]
let s:p.inactive.middle = [ [ s:fg, s:darkbg ] ]
let s:p.tabline.left    = [ [ s:lightfg,  s:lightbg ] ]
let s:p.tabline.tabsel  = [ [ s:bg,  s:green ] ]
let s:p.tabline.middle  = [ [ s:fg, s:darkbg ] ]
let s:p.tabline.right   = [ [ s:bg, s:green ] ]
let s:p.normal.error    = [ [ s:lightbg,  s:lightred] ]
let s:p.normal.warning  = [ [ s:darkbg,  s:yellow ] ]

if exists('g:lightline')
  let g:lightline#colorscheme#welpe#palette = lightline#colorscheme#flatten(s:p)
endif
