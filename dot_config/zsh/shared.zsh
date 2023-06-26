# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    alias-finder
    git
    history-substring-search
)

# Disable zsh substitution/autocomplete with URL and backslashes
DISABLE_MAGIC_FUNCTIONS=true

# Activate
source $ZSH/oh-my-zsh.sh

# Starship Prompt
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# History
source "${HOME}/.config/zsh/history.zsh"

# Aliases
source "${HOME}/.config/zsh/aliases.zsh"

# FZF
export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!.git" '

# Node manager
export N_PREFIX=$HOME/.n
export PATH=$N_PREFIX/bin:$PATH

# My stuff
PATH="${HOME}/.local/bin:${PATH}"

# Yarn global
PATH="${HOME}/.yarn/bin:${PATH}"

# Zoxide
eval "$(zoxide init zsh)"

# Completions for GitHub CLI
source "${HOME}"/.local/share/gh_cli_comp.zsh

# Generate .gitignore
function gi() { 
    curl -sL https://www.toptal.com/developers/gitignore/api/$@ >> .gitignore
    sed -i '/^#/ d' .gitignore
    sed -i '/^$/d' .gitignore
}

_gitignoreio_get_command_list() {
  curl -sL https://www.toptal.com/developers/gitignore/api/list | tr "," "\n"
}

_gitignoreio () {
  compset -P '*,'
  compadd -S '' `_gitignoreio_get_command_list`
}

compdef _gitignoreio gi

# opam configuration
[[ ! -r /Users/ulsippoi/.opam/opam-init/init.zsh ]] || source /Users/ulsippoi/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

