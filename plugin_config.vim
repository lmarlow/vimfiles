" ctrlp
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_by_filename = 1

" bufexplorer
let g:bufExplorerShowRelativePath=1  " Show relative paths.

" vimclojure
let g:clj_highlight_builtins=1      " Highlight Clojure's builtins
let g:clj_paren_rainbow=1           " Rainbow parentheses'!

" rails.vim
autocmd User Rails silent! Rnavcommand worker app/workers -glob=**/*

" additional ruby files
autocmd BufNewFile,BufRead [cC]apfile setfiletype ruby
autocmd BufNewFile,BufRead Gemfile setfiletype ruby
