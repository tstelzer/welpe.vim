"                 _               __      __ _____  __  __ 
"                | |              \ \    / /|_   _||  \/  |
" __      __ ___ | | _ __    ___   \ \  / /   | |  | \  / |
" \ \ /\ / // _ \| || '_ \  / _ \   \ \/ /    | |  | |\/| |
"  \ V  V /|  __/| || |_) ||  __/    \  /    _| |_ | |  | |
"   \_/\_/  \___||_|| .__/  \___|     \/    |_____||_|  |_|
"                   | |                                    
"                   |_|                  
" ------------------------------------------------------------------------------
" File: welpe.vim
" Description: vim colorscheme, loosely based on base16, gruvbox and new-moon
" Author: Timm Stelzer <timmstelzer@gmail.com>
" Source: https://github.com/tstelzer/welpe.vim
" ------------------------------------------------------------------------------

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "welpe"
if !exists('g:welpe_all_bold')
    let g:welpe_all_bold = 0
endif

function! s:H(group,fg,bg,style) "{{{

    if !empty(a:fg)
        let l:gfg = a:fg[0]
        let l:cfg = a:fg[1]
    else
        let l:gfg = "NONE"
        let l:cfg = "NONE"
    endif

    if !empty(a:bg)
        let l:gbg = a:bg[0]
        let l:cbg = a:bg[1]
    else
        let l:gbg = "NONE"
        let l:cbg = "NONE"
    endif

    if g:welpe_all_bold == 1
        let l:gstyle = "bold"
        let l:cstyle = "bold"
    else
        if !empty(a:style)
            " TODO check if style works in TERM
            let l:gstyle = a:style
            let l:cstyle = a:style
        else
            let l:gstyle = "NONE"
            let l:cstyle = "NONE"
        endif
    endif

    exec "hi ".a:group." guifg=".l:gfg." ctermfg=".l:cfg." guibg=".l:gbg." ctermbg=".l:cbg." gui=".l:gstyle." term=".l:cstyle

endfun
"}}}

" ##############################################################################
" ### #COLORPALETTE
" ##############################################################################
" DO NOT CHANGE THESE VALUES, ONLY ADD NEW ONES
" s:<name> = [ '<hex>', <256term>, <16term>, <8term> ]

" --- Grayscale"{{{
" ------------------------------------------------------------------------------

let s:trueblack = [ '#000000', 16,  0,  0 ]
let s:black     = [ '#080808', 232, 0,  0 ]
let s:gray1     = [ '#121212', 233, 0,  0 ]
let s:gray2     = [ '#1c1c1c', 234, 0,  0 ]
let s:gray3     = [ '#262626', 235, 0,  0 ]
let s:gray4     = [ '#303030', 236, 8,  0 ]
let s:gray5     = [ '#3a3a3a', 237, 8,  0 ]
let s:gray6     = [ '#444444', 238, 8,  0 ]
let s:gray7     = [ '#4e4e4e', 239, 8,  0 ]
let s:gray8     = [ '#606060', 241, 8,  0 ]
let s:gray9     = [ '#666666', 242, 8,  0 ]
let s:gray10    = [ '#767676', 243, 8,  0 ]
let s:gray11    = [ '#808080', 244, 8,  0 ]
let s:gray12    = [ '#8a8a8a', 245, 7,  7 ]
let s:gray13    = [ '#949494', 245, 7,  7 ]
let s:gray14    = [ '#9e9e9e', 246, 7,  7 ]
let s:gray15    = [ '#9e9e9e', 247, 7,  7 ]
let s:gray16    = [ '#a8a8a8', 248, 7,  7 ]
let s:gray17    = [ '#b2b2b2', 249, 7,  7 ]
let s:gray18    = [ '#bcbcbc', 250, 7,  7 ]
let s:gray19    = [ '#c0c0c0', 7,   7,  7 ]
let s:gray20    = [ '#c6c6c6', 251, 7,  7 ]
let s:gray21    = [ '#d0d0d0', 252, 15, 7 ]
let s:gray22    = [ '#dadada', 253, 15, 7 ]
let s:gray23    = [ '#e4e4e4', 254, 15, 7 ]
let s:white     = [ '#eeeeee', 255, 15, 7 ]
let s:truewhite = [ '#FFFFFF', 15,  15, 7 ]
"}}}
" --- Colors {{{
" ------------------------------------------------------------------------------

let s:roman      = [ '#d75f5f', 167, 1, 1 ]
let s:sundown    = [ '#ffafaf', 217, 9, 1 ]

let s:laurel     = [ '#5f875f', 65, 2, 2 ]
let s:moss       = [ '#afd7af', 151, 10, 2 ]

let s:rajah      = [ '#ffaf5f', 215, 3, 3 ]
let s:canary     = [ '#ffffaf', 229, 11, 3 ]

let s:manatee    = [ '#8787af', 103, 4, 4 ]
let s:columbia   = [ '#afd7ff', 153, 12, 4 ]

let s:londonhue  = [ '#af87af', 139, 5, 5 ]
let s:cosmos     = [ '#ffd7d7', 224, 13, 5 ]

let s:aquamarine = [ '#87ffd7', 122, 6, 6 ]
let s:lightcyan  = [ '#d7ffff', 195, 14, 6 ]


let s:darkred    = [ '#870000', 88, 1, 1 ] " just for testing
" }}}
" --- Discard Pile"{{{
" ------------------------------------------------------------------------------
let s:thistle      = [ '#d7afd7', 182, 13, 5 ]
let s:lavenderrose = [ '#ffafff', 219, 13, 5 ]
let s:mariner      = [ '#5f5faf', 61, 5, 5 ]
let s:mauve        = [ '#d7afff', 183, 13, 5 ]
let s:lavender     = [ '#afafd7', 146, 13, 5 ]
let s:maya         = [ '#87afff', 111, 4, 4 ]
let s:cornflower   = [ '#5f87ff', 69, 4, 4 ]
let s:fountain     = [ '#5fafaf', 73, 4, 4 ]
let s:ziggurat     = [ '#87afaf', 109, 4, 4 ]
let s:quartz       = [ '#d7d7ff', 189, 13, 5 ]
let s:jade         = [ '#00af5f', 35, 2, 2 ]
let s:sinbad       = [ '#afd7d7', 152, 4, 4 ]
let s:chill        = [ '#5f8787', 66, 6, 6 ]
let s:forest       = [ '#00875F', 29, 10, 2 ]
let s:biloba       = [ '#af87d7', 140, 5, 5 ]
let s:mantis       = [ '#87d75f', 113, 10, 2 ]
let s:olive        = [ '#afaf5f', 143, 10, 2 ]
let s:darkgreen    = [ '#005F00', 22, 2, 2 ]
let s:mint         = [ '#afff87', 156, 10, 2 ]
let s:lagoon       = [ '#005f87', 24, 12, 4 ]
let s:orange       = [ '#ffaf00', 214, 3, 3 ]
let s:tapestry     = [ '#af5f87', 132, 13, 5 ]
let s:maroon       = [ '#5f0000', 52, 1, 7 ]
let s:darkviolet   = [ '#af00d7', 128, 5, 5 ]
let s:pumpkin      = [ '#ff8700', 208, 3, 3 ]
let s:mosque       = [ '#005f5f', 23, 10, 2 ]
let s:gold         = [ '#ffd700', 220, 11, 3 ]
let s:bittersweet  = [ '#ff5f5f', 203, 9, 1 ]
let s:freespeech   = [ '#af0000', 124, 9, 1 ]
let s:venetian     = [ '#d70000', 160, 9, 1 ]
let s:citrus       = [ '#afaf00', 142, 3, 3 ]
let s:goldenbrown  = [ '#af5f00', 130, 13, 5 ]
let s:green        = [ '#008700', 28, 10, 2 ]
let s:darkblue     = [ '#000087', 18, 4, 4 ]
let s:salmon       = [ '#ff8787', 210, 13, 5 ]
"}}}


" ##############################################################################
" ### #FUNCTIONAL VARIABLES
" ##############################################################################
" --- change the assigned variables, if you want to change the presented colors
" ------------------------------------------------------------------------------

" --- Custom "{{{
" ------------------------------------------------------------------------------

let s:foreground = s:gray22
let s:background = s:gray2

let s:positive   = s:moss
let s:neutral    = s:columbia
let s:negative   = s:sundown
"}}}
" --- Defaults {{{
" ------------------------------------------------------------------------------
" VIM classifes MAJOR and MINOR syntax groups
" by default, every MINOR inherits its MAJORS values
" the variables are sorted and assigned in a way that reflects that
" if you dont want to deal with this, delete the MINOR groups
" see :help <group> for more information on the individual groups

let s:comment        = s:gray11

let s:constant       = s:laurel
let s:string         = s:moss        " MINOR of Constant
let s:character      = s:string      " MINOR of Constant
let s:number         = s:canary      " MINOR of Constant
let s:boolean        = s:number      " MINOR of Constant
let s:float          = s:number      " MINOR of Constant

let s:identifier     = s:rajah
let s:function       = s:manatee     " MINOR of Identifier

let s:statement      = s:manatee
let s:conditional    = s:londonhue   " MINOR of Statement
let s:repeat         = s:conditional " MINOR of Statement
let s:label          = s:statement   " MINOR of Statement
let s:operator       = s:conditional " MINOR of Statement
let s:keyword        = s:statement   " MINOR of Statement
let s:exception      = s:statement   " MINOR of Statement

let s:preproc        = s:lightcyan
let s:include        = s:preproc     " MINOR of PreProc
let s:define         = s:preproc     " MINOR of PreProc
let s:macro          = s:preproc     " MINOR of PreProc
let s:precondit      = s:preproc     " MINOR of PreProc

let s:type           = s:columbia
let s:storageclass   = s:type        " MINOR of Type
let s:structure      = s:type        " MINOR of Type
let s:typedef        = s:type        " MINOR of Type

let s:special        = s:londonhue
let s:specialchar    = s:special     " MINOR of Special
let s:tag            = s:special     " MINOR of Special
let s:delimiter      = s:cosmos      " MINOR of Special
let s:specialcomment = s:truewhite   " MINOR of Special
let s:debug          = s:special     " MINOR of Special

let s:underlined     = s:foreground

let s:ignore         = s:foreground

let s:error          = s:darkred

let s:todo           = s:truewhite
"}}}

" ##############################################################################
" ### #SYNTAX
" ##############################################################################
" --- see function s:H()
" --- s:h(<SyntaxGroup>!, <foreground>, <background>, <style>)
" --- if fields are omitted, the parent syntaxgroups field will be inherited
" --- for example omitting <background> in String, the <background>-field 
" --- of Constant will be inherited
" ------------------------------------------------------------------------------

" --- Vim Defaults TODO replace generic color vars with functional vars
" ------------------------------------------------------------------------------

call s:H("Normal",          s:foreground,     s:background, "")

call s:H("ColorColumn",     s:comment,        s:gray1,        "")
call s:H("Conceal",         s:gray3,            "",           "")
call s:H("Cursor",          s:background,     s:foreground, "")
call s:H("CursorColumn",    "",               "",           "")
call s:H("CursorIM",        s:background,     s:foreground, "")
call s:H("CursorLine",      "",               s:gray1,        "")
call s:H("CursorLineNr",    "",               s:gray1,        "bold")

call s:H("DiffAdd",         "",               s:positive,   "")
call s:H("DiffChange",      "",               s:neutral,    "")
call s:H("DiffDelete",      "",               s:negative,   "")
call s:H("Directory",       s:special,        "",           "")

call s:H("ErrorMsg",        s:error,          s:negative,   "")

call s:H("FoldColumn",      "",               s:gray3,        "")
call s:H("Folded",          "",               s:gray3,        "")

call s:H("IncSearch",       s:background,     s:foreground, "")

call s:H("LineNr",          s:comment,        "",           "")

call s:H("MatchParen",      s:background,     s:foreground, "bold")
call s:H("ModeMsg",         s:special,        s:gray1,        "bold")
call s:H("MoreMsg",         s:special,        s:gray1,        "")

call s:H("NonText",         s:operator,       "",           "")

call s:H("Pmenu",           "",               "",           "")
call s:H("PmenuSbar",       "",               "",           "")
call s:H("PmenuSel",        s:special,        s:gray1,        "")

call s:H("Question",        s:special,        s:gray1,        "bold")

call s:H("Search",          s:background,     s:foreground, "")
call s:H("SignColumn",      "",               "",           "")
call s:H("SpecialKey",      s:special,        "",           "")
call s:H("SpelBad",         s:error,          "",           "")
call s:H("SpellRare",       s:neutral,        "",           "")
call s:H("StatusLine",      s:white,          s:gray1,        "")
call s:H("StatusLineNC",    s:gray21,            s:gray1,        "")

call s:H("TabLine",         "",               s:gray1,        "")
call s:H("TabLineFill",     "",               "",           "")
call s:H("TabLineSel",      s:gray21,            s:gray1,        "")
call s:H("Title",           "",               "",           "")

call s:H("VertSplit",       "",               "",           "")
call s:H("Visual",          s:background,               s:foreground,        "")

call s:H("WildMenu",        s:special,        "",           "")

" --- Syntax
" ------------------------------------------------------------------------------

call s:H("Comment",         s:comment,        "",           "")

" --- MAJOR
call s:H("Constant",        s:constant,       "",           "")
" --- MINORS of Constant
call s:H("String",          s:string,         "",           "")
call s:H("Character",       s:character,      "",           "")
call s:H("Number",          s:number,         "",           "")
call s:H("Boolean",         s:boolean,        "",           "")
call s:H("Float",           s:float,          "",           "")

" --- MAJOR
call s:H("Identifier",      s:identifier,     "",           "")
" --- MINORS of Identifier
call s:H("Function",        s:function,       "",           "")

" --- MAJOR
call s:H("Statement",       s:statement,      "",           "bold")
" --- MINORS of Identifier
call s:H("Conditional",     s:conditional,    "",           "")
call s:H("Repeat",          s:repeat,         "",           "")
call s:H("Label",           s:label,          "",           "")
call s:H("Operator",        s:operator,       "",           "")
call s:H("Keyword",         s:keyword,        "",           "")
call s:H("Exception",       s:exception,      "",           "")

" --- MAJOR
call s:H("PreProc",         s:preproc,        "",           "bold")
" --- MINORS of PreProc
call s:H("Include",         s:include,        "",           "")
call s:H("Define",          s:define,         "",           "")
call s:H("Macro",           s:macro,          "",           "")
call s:H("PreCondit",       s:precondit,      "",           "")

" --- MAJOR
call s:H("Type",            s:type,           "",           "")
" --- MINORS of Type
call s:H("StorageClass",    s:storageclass,   "",           "")
call s:H("Structure",       s:structure,      "",           "")
call s:H("Typedef",         s:typedef,        "",           "")

" --- MAJOR
call s:H("Special",         s:special,        "",           "")
" --- MINORS of Special
call s:H("SpecialChar",     s:specialchar,    "",           "")
call s:H("Tag",             s:tag,            "",           "")
call s:H("Delimiter",       s:delimiter,      "",           "")
call s:H("SpecialComment",  s:specialcomment, "",           "")
call s:H("Debug",           s:debug,          "",           "")

call s:H("Underlined",      s:underlined,     "",           "")

call s:H("Ignore",          s:ignore,         "",           "")

call s:H("Error",           s:error,          s:negative,   "")

call s:H("Todo",            s:todo,           "",           "bold")

" --- Filetype specific Syntax
" ------------------------------------------------------------------------------

" Vimscript
"
hi! link vimUserFunc Function
hi! link vimIsCommand Statement
hi! link vimOperParen Identifier

" HTML

call s:H("htmlBold",        "",               "",           "bold")
call s:H("htmlItalic",      "",               "",           "italic")

delf s:H
