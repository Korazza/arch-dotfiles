# env vars
export ZSH="$HOME/.oh-my-zsh"
export THEME=kitty

# theme
ZSH_THEME="korazza"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  npm
  yarn
  docker
  docker-compose
  zsh-syntax-highlighting
)

DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='code'
fi

# aliases
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls='exa --icons --color=always --group-directories-first --git-ignore'
alias la='exa -a --icons --color=always --group-directories-first --git-ignore'
alias ll='exa --git -l --icons --color=always --group-directories-first --git-ignore'
alias lla='exa --git -l -a --icons --color=always --group-directories-first --git-ignore'
alias lt='exa -TDL1 --icons --color=always --group-directories-first --git-ignore'
alias ltt='exa -TDL2 --icons --color=always --group-directories-first --git-ignore'
alias lttt='exa -TDL3 --icons --color=always --group-directories-first --git-ignore'
alias ltttt='exa -TDL4 --icons --color=always --group-directories-first --git-ignore'

# path vars
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:~/go/bin
