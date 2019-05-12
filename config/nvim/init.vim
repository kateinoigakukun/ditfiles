" Inherit .vimrc
execute 'source' expand('$DOTFILE_PATH') .'/.vimrc'

let s:pyenv_shims = expand('$PYENV_ROOT/shims/')
if isdirectory(s:pyenv_shims)
  let g:python3_host_prog = s:pyenv_shims . 'python3'
endif
