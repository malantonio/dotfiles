# UPDATED updated terminal layout w/ help from kirsle.net/wizards/ps1.html
alias ls='ls -GFh'
alias gl='git log --oneline --graph --topo-order'
alias gs='git status'

# colorifying
alias grep='grep --color=auto'
alias phpunit='phpunit --colors'

alias localhost-ip='ipconfig getifaddr en1'

export LOLCOMMITS_STEALTH=true

export CLICOLOR=1
export LSCOLORS='GxFxCxDxBxegedabagaced'

umask 002

function parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RESET='\[\033[0m\]'

# [user] on [hostname] in [filepath]
PS1="\[\033[0;36m\][\u]\[\033[0m\] on \[\033[0;32m\][\h]\[\033[0m\] in \[\033[0;33m\][\w\[\033[0;35m\]\$(parse_git_branch)\[\033[0;33m\]]$RESET\n🐌\ "

# add homebrew php + mysql path definition
export PATH="$PATH:$(brew --prefix homebrew/php/php56)/bin"
export PATH="$PATH:/usr/local/Cellar/mysql/5.6.21/bin"

# add composer's global bin dir
export PATH="$PATH:/Users/Adam/.composer/vendor/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# add rvm to PATH
export PATH=$PATH:$HOME/.rvm/bin

### Added by the Heroku Toolbelt
export PATH="$PATH:/usr/local/heroku/bin"

# sassc variables
export SASS_LIBSASS_PATH=/Users/Adam/etc/sass/libsass
export SASS_SASSC_PATH=/Users/Adam/etc/sass/sassc
