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

if command -v aws_completer &>/dev/null; then
    complete -C "$(which aws_completer)" aws 
fi
######## PATH setup ###############
if command -v go &>/dev/null; then
    export PATH=$PATH:$GOPATH/bin
    [ $(uname) = "Darwin" ] && export PATH=$PATH:/usr/local/go/bin
fi

[ -f ~/scripts/bin ] && export PATH=$PATH:/Users/blakeasm/scripts/bin
[ -f ~/.local/bin ] && export PATH=$PATH:/Users/blakeasm/.local/bin
[ -f ~/.local/scriptthing/bin ] && export PATH=$PATH:/Users/blakeasm/.local/scriptthing/bin

export PATH=$PATH:/Users/blakeasm/.local/scriptthing/bin
export PATH=$PATH:/Users/blakeasm/.local/bin

[ -f ~/scripts/source_shell_extensions.sh ] && source ~/scripts/source_shell_extensions.sh

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh && enable-fzf-tab

