if [ "$TMUX" = "" ]; then tmux; fi
source $XDG_CONFIG_HOME/shell/profile
source $XDG_CONFIG_HOME/shell/aliasrc

source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting"
zplug 'dracula/zsh', as:theme

ZSH_THEME="dracula"

# Setup fzf
if [[ ! "$PATH" == */home/boki/down/packages/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/boki/down/packages/fzf/bin"
fi
source $HOME/down/packages/fzf/shell/key-bindings.zsh
source $HOME/down/packages/fzf/shell/completion.zsh

zplug load
