
bash ~/.config/fish/check_homebrew_install.sh

set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_color_scheme solarized
set -g theme_date_format "+%a %H:%M"
set -g theme_date_timezone America/Los_Angeles
set -g theme_display_git yes
set -g theme_display_git_dirty yes
set -g theme_display_git_ahead_verbose yes


alias gb="git branch"
alias gc="git checkout"
alias gcm="git commit -m"
alias gp="git pull -r"
alias 2s="cd ~/Desktop/2s"

alias prof="code ~/.config/fish/config.fish"
alias pip="pip3"
alias python="python3"
alias pgconf="code ~/.pg_service.conf"
alias cleanup="git branch --merged | egrep -v '(^\*|master|develop|main)' | xargs git branch -d"
alias claer="clear"
alias sprof="source ~/.config/fish/config.fish"
alias music="open /Applications/Spotify.app/"
alias rmf="rm -rf"
alias cleanupall="git branch |  grep -v master | xargs git branch -D"
alias terraform="/usr/local/bin/terraform"
alias terraform_old="/Users/samarth/.asdf/shims/terraform"
alias tfshow="terraform workspace show"
alias tflist="terraform state list"
alias tfplan="terraform plan"
alias tfswitch="terraform workspace select"
alias tfmt="terraform fmt"
alias tfv1show="terraformv1 workspace show"
alias tfv1list="terraformv1 state list"
alias tfv1plan="terraformv1 plan"
alias tfv1switch="terraformv1 workspace select"
alias tfv1mt="terraformv1 fmt"
alias tst="tig status"
alias stash="git stash"
alias awscreds="code ~/.aws/credentials"
alias build="cargo build"
alias run="cargo run"
alias tmuxconf="code ~/.tmux.conf"
alias thanks="fuck"
alias desk='cd ~/Desktop'
alias curltime="curl -w \"@$HOME/Desktop/2s/curl-format.txt\" -o ~/dev/null -s "

export RUST_LOG=info
export PATH="/Users/samarth/.ssi/bin:$PATH"
export PATH="/Users/samarth/Library/Python/3.6/bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
set PATH "/Library/Frameworks/Python.framework/Versions/3.6/bin:$PATH"
export PATH

export PATH="$HOME/.cargo/bin:$PATH"

function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
source /usr/local/opt/asdf/asdf.fish

thefuck --alias | source
