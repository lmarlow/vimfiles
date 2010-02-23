"map Q to something useful
noremap Q gq

"make Y consistent with C and D
nnoremap Y y$

"visual search mappings
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>

"map <leader>ff :FuzzyFinderTextMate<CR>
map <leader>ff :<C-u>FufFile **/<CR>
map <leader>fb :FuzzyFinderBuffer<CR>
map <leader>ft :FuzzyFinderTag<CR>

map <leader>d :NERDTreeToggle<CR>

" If the search term highlighting gets annoying, set a key to switch it off temporarily
nmap <silent> <leader>n :silent :nohlsearch<CR>

" Catch trailing whitespace
" set listchars=tab:>-,trail:·,eol:$,nbsp:·
" set listchars=tab:>-,trail:·,nbsp:·
nmap <silent> <leader>s :set nolist!<CR>
