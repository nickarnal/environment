set -o vi

################################################################################
# FUNCTIONS
################################################################################
function gitBranch(){
    git branch 2>/dev/null | grep \* | sed 's/\* / /'
}

################################################################################
# ALIASES
################################################################################
alias qt="/Applications/QuickTime\ Player.app/Contents/MacOS/QuickTime\ Player"
alias ls="ls -GF"
alias ll="ls -GFlash"
alias python="python3"
alias treepy="tree | grep -v \"\.pyc\|__\""

################################################################################
# ENVIRONMENT VARIABLES
################################################################################
# PS1 formatting help
# escape sequence: "\[\e[Xm\]{text to format}"
#   X is the format number
# format 
# 0:  normal
# 1:  bold
# 39: default foreground
# 30: black
# 31: red
# 32: green
# 33: yellow
# 34: blue
# 35: magenta
# 36: cyan
# 37: light gray
# 90: dark gray
# 91: light red
# 92: light green
# 93: light yellow
# 94: light blue
# 95: light magenta
# 96: light cyan
# 97: white
export PS1="\[\e[1m\]\[\e[96m\]\W\[\e[0m\]\[\e[92m\]\$(gitBranch)\[\e[0m\]:"
export invest="$HOME/gitRepos/InvestmentModelingTool/"
