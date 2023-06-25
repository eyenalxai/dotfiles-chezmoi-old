{{- if eq .chezmoi.os "darwin" }}
EDITOR=/opt/homebrew/bin/nvim

alias sed=gsed

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source "${HOME}/.fzf.zsh"

# Brew autocompletions
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Docker
source /Users/ulsippoi/.docker/init-zsh.sh || true
{{- end }}
