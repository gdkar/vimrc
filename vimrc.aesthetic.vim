scriptencoding utf-8
set encoding=utf-8

set lazyredraw
set cursorline
set laststatus=2
set foldlevelstart=10
set mouse=a
"set foldcolumn=1

set ruler

if has('multi_byte')
    set list
    set listchars=tab:»·,trail:·
    set fillchars=vert:┃

if !has('vim_starting')
    NeoBundleSource airline
    AirlineRefresh
endif

if has('termtruecolor')
    let &t_8f="\e[38;2;%ld;%ld;%ldm"
    let &t_8b="\e[48;2;%ld;%ld;%ldm"
    set guicolors
endif

if  &term =~ "256" 
    " 256-color terminals get a modified version of lucius
    set t_Co=256
    colorscheme lucius
    LuciusDark
    colorscheme darkblue
    " make things a little nicer
    hi Normal       ctermfg=255  ctermbg=none guifg=#FFFFFF guibg=#000000
    hi Todo         ctermfg=160  ctermbg=233  guifg=#D70000 guibg=#121212
    hi SpellBad     ctermfg=196  ctermbg=52   guifg=#FF8888 guibg=#660000
    hi Search       ctermfg=51   ctermbg=30   guifg=#17FCED guibg=#0A8A81
    hi VertSplit    ctermfg=237  ctermbg=234  guifg=#2b2b2b guibg=#1c1c1c
    hi NonText                   ctermbg=none
    hi Comment      ctermfg=250
    hi Pmenu        ctermfg=250  ctermbg=237
    hi PmenuSel     ctermfg=186  ctermbg=59
    hi PmenuSBar    ctermfg=186  ctermbg=59
    hi CursorLine                ctermbg=59
    hi CursorColumn              ctermbg=17
    hi TabLine      ctermfg=244  ctermbg=238 cterm=underline
    hi TabLineFill  ctermfg=244  ctermbg=238 cterm=underline
else
    set t_Co=256
"    colorscheme industry
"    colorscheme lucius
"    LuciusDark
    colorscheme darkblue
    hi Normal       ctermfg=white ctermbg=none
    hi Comment      ctermfg=160   ctermbg=none
    hi NonText                   ctermbg=none
    hi Todo         ctermfg=160 cterm=none
    hi Pmenu        ctermfg=250  ctermbg=237
    hi CursorLine                ctermbg=59
"    hi CursorColumn              ctermbg=17
    hi TabLine      ctermfg=244  ctermbg=238 cterm=underline
    hi TabLineFill  ctermfg=244  ctermbg=238 cterm=underline
    hi PmenuSel     cterm=none  ctermfg=cyan    ctermbg=none
    hi PmenuThumb   cterm=none  ctermfg=yellow  ctermbg=yellow
    hi PmenuSbar    cterm=none  ctermfg=black   ctermbg=green
    hi StatusLine   cterm=none  ctermfg=black   ctermbg=darkgreen

"
"    colorscheme darkblue
"    hi Normal       ctermfg=255 ctermbg=none cterm=none
"    hi CursorLine   term=underline 
"    hi CursorColumn term=underline 
"
endif


let g:sneak#prompt = '〉'
hi link SneakPluginTarget   DiffAdd
hi link SneakPluginScope    DiffChange


" vim: fdm=marker
