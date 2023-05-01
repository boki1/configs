if [ "$TMUX" = "" ]; then tmux; fi

# NB: Must be before next source since ZPLUG_HOME is set in the profile.
source $HOME/toolkit/configs/shell/profile.sh

source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "zsh-users/zsh-syntax-highlighting"
zplug 'dracula/zsh', as:theme
zplug 'urbainvaes/fzf-marks'

ZSH_THEME="dracula"

# Setup fzf
source $HOME/downl/packages/fzf/shell/key-bindings.zsh
source $HOME/downl/packages/fzf/shell/completion.zsh

zplug load
