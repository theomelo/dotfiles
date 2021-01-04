let vimthemes = '~/.vim/themes'

for fpath in split(globpath(vimthemes, '*.vim'), '\n')
  exe 'source' fpath
endfor
