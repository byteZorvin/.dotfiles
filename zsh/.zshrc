# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bytezorvin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export PS1="%B%F{green}%n%F{blue}@%m%f:%B%F{cyan}%c%f%b%F{reset}$ "


autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Tmux not knowing that utf8 is suppported and symbols not proper
export LC_ALL=en_IN.UTF-8
export LANG=en_IN.UTF-8


# GTK_THEME not working properly in i3
export GTK_THEME=Adwaita-dark


#  PATH VARIABLES START
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

# neovim start
export PATH="/opt/nvim:$PATH"
# neovim end

# zoxide start
export PATH="/home/bytezorvin/.local/bin:$PATH"
eval "$(zoxide init --cmd cd bash)"
# zoxide end

# pnpm
export PNPM_HOME="/home/bytezorvin/.local/share/pnpm"
case ":$PATH:" in
  ":$PNPM_HOME:") ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$PATH:/home/bytezorvin/.foundry/bin"
# PATH VARIABLES END

# Git aliases
alias gp="git pull"
alias gs="git status"

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# This for persisting key remaps
xmodmap ~/.Xmodmap  

# fzf setup
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# bindkey '^f' 'nvim $(fzf --preview='cat {}')'
# fzf end

# zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# zsh-autosuggestions end

# For getting installation hints like bash in zsh
source /etc/zsh_command_not_found

. "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
