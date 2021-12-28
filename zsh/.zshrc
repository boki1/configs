if [ "$TMUX" = "" ]; then tmux; fi
source $XDG_CONFIG_HOME/shell/profile
source $XDG_CONFIG_HOME/shell/aliasrc

source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug 'dracula/zsh', as:theme
zplug "b4b4r07/enhancd", at:v1
zplug "mtully/gitsome", as:theme, from:oh-my-zsh

zplug 'be5invis/Iosevka'

# Setup fzf
if [[ ! "$PATH" == */home/boki/down/packages/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/boki/down/packages/fzf/bin"
fi
source $HOME/down/packages/fzf/shell/key-bindings.zsh
source $HOME/down/packages/fzf/shell/completion.zsh

zplug load
# [ test -z $(zplug check) ] && zplug install
