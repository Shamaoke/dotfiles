" ============================================================================
" File:        plugin-leaderf-colorscheme-status-undina.vim
" Description:
" Author:      Shamaoke <shamaoke@yandex.ru>
" Website:
" Note:
" License:
" ============================================================================

let s:palette = {
  \ 'stlName': {
  \   'gui': 'bold',
  \   'font': 'NONE',
  \   'guifg': '#2F5C00',
  \   'guibg': '#BAFFA3',
  \   'cterm': 'none',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlCategory': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': '#000000',
  \   'guibg': '#F28379',
  \   'cterm': 'none',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlNameOnlyMode': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': '#000000',
  \   'guibg': '#E8ED51',
  \   'cterm': 'none',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlFullPathMode': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': '#000000',
  \   'guibg': '#AAAAFF',
  \   'cterm': 'none',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlFuzzyMode': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': '#000000',
  \   'guibg': '#E8ED51',
  \   'cterm': 'none',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlRegexMode': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': '#000000',
  \   'guibg': '#7FECAD',
  \   'cterm': 'NONE',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlCwd': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': '#EBFFEF',
  \   'guibg': '#606168',
  \   'cterm': 'NONE',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlBlank': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': 'NONE',
  \   'guibg': '#3B3E4C',
  \   'cterm': 'none',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlLineInfo': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': '#000000',
  \   'guibg': '#EBFFEF',
  \   'cterm': 'none',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ },
  \ 'stlTotal': {
  \   'gui': 'NONE',
  \   'font': 'NONE',
  \   'guifg': '#000000',
  \   'guibg': '#BCDC5C',
  \   'cterm': 'none',
  \   'ctermfg': '7',
  \   'ctermbg': '233'
  \ }
\ }

let g:leaderf#colorscheme#default#palette = leaderf#colorscheme#mergePalette(s:palette)
