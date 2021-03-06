if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile, *.json set filetype=json
augroup END

augroup json_autocmd
autocmd!
autocmd FileType json set autoindent
autocmd FileType json set formatoptions=tcq2l
autocmd FileType json set textwidth=78 shiftwidth=2
autocmd FileType json set softtabstop=2 tabstop=8
autocmd FileType json set expandtab
autocmd FileType json set foldmethod=syntax
augroup END
