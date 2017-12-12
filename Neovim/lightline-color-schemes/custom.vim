" Black
let s:base03 =  [ '#151513', 233 ]
" Background
let s:base02 =  [ '#121212', 236 ]
" Lightgrey
let s:base01 =  [ '#4e4e43', 239 ]
" Lightergrey
let s:base00 =  [ '#666656', 242 ]
" Lightesgrey
let s:base0 =   [ '#808070', 244 ]
" Lightestestgrey
let s:base1 =   [ '#949484', 246 ]
" Muddy White
let s:base2 =   [ '#a8a897', 248 ]
" Creme White
let s:base3 =   [ '#e8e8d3', 253 ]

let s:yellow =  [ '#ffb964', 215 ]
let s:orange =  [ '#c57359', 222 ]
let s:red =     [ '#d06a4c', 167 ]
let s:magenta = [ '#f0a0c0', 217 ]
let s:blue =    [ '#548FBB', 103 ]
let s:cyan =    [ '#8fbfdc', 110 ]
let s:green =   [ '#99ad6a', 107 ]

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left =       [ [ s:base02, s:blue ],     [ s:base3, s:base01 ] ]
let s:p.normal.middle =     [ [ s:base0, s:base02 ] ]
let s:p.normal.right =      [ [ s:base02, s:base1 ],    [ s:base2, s:base01 ] ]
let s:p.normal.error =      [ [ s:red, s:base02 ] ]
let s:p.normal.warning =    [ [ s:yellow, s:base01 ] ]
let s:p.inactive.left =     [ [ s:base0, s:base02 ],    [ s:base00, s:base02 ] ]
let s:p.inactive.middle =   [ [ s:base00, s:base02 ] ]
let s:p.inactive.right =    [ [ s:base02, s:base00 ],   [ s:base0, s:base02 ] ]
let s:p.insert.left =       [ [ s:base02, s:green ],    [ s:base3, s:base01 ] ]
let s:p.visual.left =       [ [ s:base02, s:orange],  [ s:base3, s:base01 ] ]
let s:p.replace.left =      [ [ s:base02, s:red ],      [ s:base3, s:base01 ] ]
let s:p.tabline.left =      [ [ s:base3, s:base00 ] ]
let s:p.tabline.tabsel =    [ [ s:base3, s:base02 ] ]
let s:p.tabline.middle =    [ [ s:base01, s:base1 ] ]
let s:p.tabline.right =     copy(s:p.normal.right)

let g:lightline#colorscheme#custom#palette = lightline#colorscheme#flatten(s:p)
