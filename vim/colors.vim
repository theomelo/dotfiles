let vimcolors = '~/.vim/colors'

for fpath in split(globpath(vimcolors, '*.vim'), '\n')
  exe 'source' fpath
endfor
