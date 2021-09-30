function ls --wraps='exa -l --color=auto --group-directories-first' --description 'alias ls=exa -l --color=auto --group-directories-first'
  exa -l --color=auto --group-directories-first $argv; 
end
