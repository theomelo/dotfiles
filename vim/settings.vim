let vimsettings = '~/.vim/settings'
set mouse=n

for fpath in split(globpath(vimsettings, '*.vim'), '\n')
  exe 'source' fpath
endfor
