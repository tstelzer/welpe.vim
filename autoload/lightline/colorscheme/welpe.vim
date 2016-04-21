" ##############################################################################
" Filename: autoload/lightline/colorscheme/welpe.vim
" Description: welpe colorscheme for lightline
" Author: tstelzer <tstelzer@gmail.com>
" Source: github.com/tstelzer/welpe.vim
" ##############################################################################
" --- Grayscale"{{{
" ------------------------------------------------------------------------------
let s:trueblack = [ '#000000', 16 ]
let s:black     = [ '#080808', 232 ]
let s:gray0     = [ '#121212', 233 ]
let s:gray1     = [ '#1c1c1c', 234 ]
let s:gray2     = [ '#262626', 235 ]
let s:gray3     = [ '#303030', 236 ]
let s:gray4     = [ '#3a3a3a', 237 ]
let s:gray5     = [ '#444444', 238 ]
let s:gray6     = [ '#4e4e4e', 239 ]
let s:gray7     = [ '#606060', 241 ]
let s:gray8     = [ '#666666', 242 ]
let s:gray9    = [ '#767676', 243 ]
let s:gray10    = [ '#808080', 244 ]
let s:gray11    = [ '#8a8a8a', 245 ]
let s:gray12    = [ '#949494', 245 ]
let s:gray13    = [ '#9e9e9e', 246 ]
let s:gray14    = [ '#9e9e9e', 247 ]
let s:gray15    = [ '#a8a8a8', 248 ]
let s:gray16    = [ '#b2b2b2', 249 ]
let s:gray17    = [ '#bcbcbc', 250 ]
let s:gray18    = [ '#c0c0c0', 7 ]
let s:gray19    = [ '#c6c6c6', 251 ]
let s:gray20    = [ '#d0d0d0', 252 ]
let s:gray21    = [ '#dadada', 253 ]
let s:gray22    = [ '#e4e4e4', 254 ]
let s:white     = [ '#eeeeee', 255 ]
let s:truewhite = [ '#FFFFFF', 15 ]
"}}}
" --- Palette {{{
" ------------------------------------------------------------------------------
" Important: DON'T USE THE COLORNAMES IN THE SYNTAX GROUPS,
" use the generic color vars instead
let s:aquamarine = [ '#87ffd7', 122 ]
let s:canary     = [ '#ffffaf', 229 ]
let s:columbia   = [ '#afd7ff', 153 ]
let s:cornflower   = [ '#5f87ff', 69 ]
let s:darkviolet = [ '#8700df', 92 ]
let s:laurel     = [ '#5f875f', 65 ]
let s:lightcyan  = [ '#d7ffff', 195 ]
let s:moss       = [ '#afd7af', 151 ]
let s:rajah      = [ '#ffaf5f', 215 ]
let s:roman      = [ '#d75f5f', 167 ]
let s:sundown    = [ '#ffafaf', 217 ]
let s:thistle      = [ '#d7afd7', 182 ]
" }}}

let s:_darkblue = s:cornflower
let s:_darkcyan = s:aquamarine
let s:_darkgreen = s:laurel
let s:_darkmagenta = s:darkviolet
let s:_darkred = s:roman
let s:_lightblue = s:columbia
let s:_lightcyan = s:lightcyan
let s:_lightgreen = s:moss
let s:_lightmagenta = s:thistle
let s:_lightred = s:sundown
let s:_orange = s:rajah
let s:_yellow = s:canary
let s:lightfg = s:white 
let s:fg = s:gray21
let s:darkfg = s:gray17
let s:lightbg = s:gray3
let s:bg = s:gray1
let s:darkbg = s:gray0

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:white,  s:_darkblue],    [ s:white,  s:lightbg ] ]
let s:p.normal.middle   = [ [ s:fg, s:darkbg ] ]
let s:p.normal.right    = [ [ s:lightbg,  s:lightbg ],   [ s:white, s:lightbg ] ]
let s:p.inactive.left   = [ [ s:fg, s:lightbg ],   [ s:lightbg,  s:bg ] ]
let s:p.inactive.right  = [ [ s:darkfg,  s:lightbg ],   [ s:lightbg,  s:lightbg ] ]
let s:p.insert.left     = [ [ s:bg,  s:_lightgreen],   [ s:white,  s:lightbg ] ]
let s:p.replace.left    = [ [ s:bg,  s:_lightred],     [ s:white,  s:lightbg ] ]
let s:p.visual.left     = [ [ s:bg,  s:_lightblue], [ s:white,  s:lightbg ] ]
let s:p.inactive.middle = [ [ s:fg, s:darkbg ] ]
let s:p.tabline.left    = [ [ s:white,  s:bg ] ]
let s:p.tabline.tabsel  = [ [ s:white,  s:lightbg ] ]
let s:p.tabline.middle  = [ [ s:fg, s:darkbg ] ]
let s:p.tabline.right   = [ [ s:fg, s:lightbg ] ]
let s:p.normal.error    = [ [ s:darkbg,  s:_lightred] ]
let s:p.normal.warning  = [ [ s:darkbg,  s:_yellow ] ]

let g:lightline#colorscheme#welpe#palette = lightline#colorscheme#flatten(s:p)
