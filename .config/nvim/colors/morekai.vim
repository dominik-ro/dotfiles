" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai
"
" Note: Based on the Monokai theme for TextMate
" by Wimer Hazenberg and its darker variant
" by Hamish Stuart Macpherson
"

hi clear

let g:colors_name="morekai"

if exists("g:molokai_original")
    let s:molokai_original = g:molokai_original
else
    let s:molokai_original = 0
endif

" Support for 256-color terminal
"
   hi Normal          ctermfg=250 ctermbg=233
   hi CursorLine                  ctermbg=236   cterm=none
   hi CursorLineNr    ctermfg=255               cterm=none
   hi Boolean         ctermfg=142
   hi Character       ctermfg=144
   hi Number          ctermfg=142   
   hi String          ctermfg=137
   hi Conditional     ctermfg=203             
   hi Constant        ctermfg=255 
   hi Cursor          ctermfg=16  ctermbg=236
   hi Debug           ctermfg=225               cterm=bold
   hi Define          ctermfg=203
   hi Delimiter       ctermfg=215

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=181 ctermbg=239
   hi DiffDelete      ctermfg=162 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=118               cterm=bold
   hi Error           ctermfg=219 ctermbg=89
   hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
   hi Exception       ctermfg=246               cterm=bold
   hi Float           ctermfg=142
   hi FoldColumn      ctermfg=67  ctermbg=16
   hi Folded          ctermfg=67  ctermbg=16
   hi Function        ctermfg=38 
   hi Identifier      ctermfg=203               cterm=none
   hi Ignore          ctermfg=244 ctermbg=232
   hi IncSearch       ctermfg=193

   hi keyword         ctermfg=203                cterm=bold
   hi Label           ctermfg=203               cterm=none
   hi Macro           ctermfg=193
   hi SpecialKey      ctermfg=124

   hi MatchParen      ctermfg=233 cterm=bold
   hi ModeMsg         ctermfg=229
   hi MoreMsg         ctermfg=229
   hi Operator        ctermfg=215

   " complete menu
   hi Pmenu           ctermfg=81  ctermbg=16
   hi PmenuSel        ctermfg=255 ctermbg=242
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=81

   hi PreCondit       ctermfg=203               cterm=bold
   hi PreProc         ctermfg=203
   hi Question        ctermfg=81
   hi Repeat          ctermfg=167               cterm=bold
   hi Search          ctermfg=0   ctermbg=222   cterm=NONE

   " marks column
   hi SignColumn      ctermfg=118 ctermbg=235
   hi SpecialChar     ctermfg=167               cterm=bold
   hi SpecialComment  ctermfg=245               cterm=bold
   hi Special         ctermfg=144
   if has("spell")
       hi SpellBad                ctermbg=52
       hi SpellCap                ctermbg=17
       hi SpellLocal              ctermbg=17
       hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
   endif
   hi Statement       ctermfg=203               
   hi StatusLine      ctermfg=238 ctermbg=253
   hi StatusLineNC    ctermfg=244 ctermbg=232
   hi StorageClass    ctermfg=208
   hi Structure       ctermfg=81
   hi Tag             ctermfg=167
   hi Title           ctermfg=166
   hi Todo            ctermfg=231 ctermbg=232   cterm=bold

   hi Type            ctermfg=155                cterm=none
   hi Typedef         ctermfg=155   
   hi Underlined      ctermfg=244               cterm=underline

   hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual                      ctermbg=235
   hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
   hi WildMenu        ctermfg=81  ctermbg=16

   hi CursorColumn                ctermbg=236
   hi ColorColumn                 ctermbg=236
   hi Comment         ctermfg=59
   hi LineNr          ctermfg=244 ctermbg=235
   hi NonText         ctermfg=59

   hi SpecialKey      ctermfg=59

 " Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark
