eval "$(zoxide init zsh)"

private_root=$(realpath ~/configthing/priv)

private_zshrc="$private_root/zsh/.zshrc"
if [ -f $private_zshrc ]; then
    source $private_zshrc
fi


bindkey -v #vi-mode


######## Prompt ###################
if command -v starship &>/dev/null; then
    eval "$(starship init zsh)"
fi
######## Completion ###############
zstyle ':completion:*' menu select
[ -f ~/.zfunc ] && fpath+=~/.zfunc
[ $(uname) = "Darwin" ] && autoload bashcompinit && bashcompinit \
    && autoload -Uz compinit && compinit


if command -v aws_completer &>/dev/null; then
    complete -C "$(which aws_completer)" aws 
fi
######## PATH setup ###############
if command -v go &>/dev/null; then
    export PATH=$PATH:$GOPATH/bin
    [ $(uname) = "Darwin" ] && export PATH=$PATH:/usr/local/go/bin
fi

[ -d ~/scripts/bin ] && export PATH=$PATH:$HOME/scripts/bin
[ -d ~/configthing/bin ] && export PATH=$PATH:$HOME/configthing/bin
[ -d ~/configthing/priv/bin ] && export PATH=$PATH:$HOME/configthing/priv/bin
[ -d ~/.local/bin ] && export PATH=$PATH:$HOME/.local/bin/
[ -d ~/.local/scriptthing/bin ] && export PATH=$PATH:$HOME.local/scriptthing/bin

export PATH=$PATH:/Users/blakeasm/.local/scriptthing/bin
export PATH=$PATH:/Users/blakeasm/.local/bin

[ -f ~/scripts/source_shell_extensions.sh ] && source ~/scripts/source_shell_extensions.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh 

