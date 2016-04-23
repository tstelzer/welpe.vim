" ##############################################################################
" Filename: autoload/lightline/colorscheme/welpe.vim
" Description: welpe colorscheme for lightline
" Author: tstelzer <tstelzer@gmail.com>
" Source: github.com/tstelzer/welpe.vim
" ##############################################################################
" --- Grayscale"{{{
" ------------------------------------------------------------------------------
let s:_trueblack = [ '#000000', 16 ]
let s:_black     = [ '#080808', 232 ]
let s:_gray0     = [ '#121212', 233 ]
let s:_gray1     = [ '#1c1c1c', 234 ]
let s:_gray2     = [ '#262626', 235 ]
let s:_gray3     = [ '#303030', 236 ]
let s:_gray4     = [ '#3a3a3a', 237 ]
let s:_gray5     = [ '#444444', 238 ]
let s:_gray6     = [ '#4e4e4e', 239 ]
let s:_gray7     = [ '#606060', 241 ]
let s:_gray8     = [ '#666666', 242 ]
let s:_gray9    = [ '#767676', 243 ]
let s:_gray10    = [ '#808080', 244 ]
let s:_gray11    = [ '#8a8a8a', 245 ]
let s:_gray12    = [ '#949494', 245 ]
let s:_gray13    = [ '#9e9e9e', 246 ]
let s:_gray14    = [ '#9e9e9e', 247 ]
let s:_gray15    = [ '#a8a8a8', 248 ]
let s:_gray16    = [ '#b2b2b2', 249 ]
let s:_gray17    = [ '#bcbcbc', 250 ]
let s:_gray18    = [ '#c0c0c0', 7 ]
let s:_gray19    = [ '#c6c6c6', 251 ]
let s:_gray20    = [ '#d0d0d0', 252 ]
let s:_gray21    = [ '#dadada', 253 ]
let s:_gray22    = [ '#e4e4e4', 254 ]
let s:_white     = [ '#eeeeee', 255 ]
let s:_truewhite = [ '#FFFFFF', 15 ]
"}}}
" --- Colors {{{
" ------------------------------------------------------------------------------
" Important: DON'T USE THE COLORNAMES IN THE SYNTAX GROUPS,
" use the generic color vars instead
let s:_darkred       = [ '#870000', 88 ]
let s:_roman         = [ '#d75f5f', 167 ]
let s:_moss          = [ '#afd7af', 151 ]
let s:_orange        = [ '#ffaf00', 214 ]
let s:_shalimar      = [ '#ffffaf', 229 ]
let s:_cornflower    = [ '#5f87ff', 69 ]
let s:_mediumorchid  = [ '#af5fd7', 134 ]
let s:_paleturquoise = [ '#afffff', 159 ]
" }}}
" --- Palette {{{
let s:blue      = s:_cornflower
let s:cyan      = s:_paleturquoise
let s:green     = s:_moss
let s:magenta   = s:_mediumorchid
let s:darkred   = s:_darkred
let s:lightred  = s:_roman
let s:orange    = s:_orange
let s:yellow    = s:_shalimar
let s:lightfg   = s:_white
let s:fg        = s:_gray21
let s:darkfg    = s:_gray10
let s:lighterbg = s:_gray6
let s:lightbg   = s:_gray4
let s:bg        = s:_gray2
let s:darkbg    = s:_gray0
" }}}

let s:p                 = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left     = [ [ s:bg,  s:cyan ], [ s:lightfg,  s:lightbg], [ s:lightfg,  s:bg]]
let s:p.normal.middle   = [ [ s:darkfg, s:darkbg ] ]
let s:p.normal.right    = [ [ s:lightfg,  s:lighterbg], [ s:lightfg,  s:lightbg ], [ s:lightfg,  s:bg]]
let s:p.inactive.left   = [ [ s:fg, s:lightbg ],   [ s:lightbg,  s:bg ] ]
let s:p.inactive.right  = [ [ s:darkfg,  s:lightbg ],   [ s:lightbg,  s:lightbg ] ]
let s:p.insert.left     = [ [ s:bg,  s:green],   [ s:lightfg,  s:lightbg ] ]
" let s:p.insert.middle   = [ [ s:lightfg, s:_darkgreen ] ]
let s:p.replace.left    = [ [ s:bg,  s:lightred],     [ s:lightfg,  s:lightbg ] ]
let s:p.visual.left     = [ [ s:lightfg,  s:blue ], [ s:lightfg,  s:lightbg ] ]
" let s:p.visual.middle= [ [ s:lightfg, s:cyan ]]
let s:p.inactive.middle = [ [ s:fg, s:darkbg ] ]
let s:p.tabline.left    = [ [ s:lightfg,  s:lightbg ] ]
let s:p.tabline.tabsel  = [ [ s:bg,  s:cyan ] ]
let s:p.tabline.middle  = [ [ s:fg, s:darkbg ] ]
let s:p.tabline.right   = [ [ s:fg, s:lightbg ] ]
let s:p.normal.error    = [ [ s:lightbg,  s:lightred] ]
let s:p.normal.warning  = [ [ s:darkbg,  s:yellow ] ]

if exists('g:lightline')
    let g:lightline#colorscheme#welpe#palette = lightline#colorscheme#flatten(s:p)
endif
