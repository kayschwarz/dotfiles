export ZSH=~/.zsh

source ~/Develop/dotfiles/zsh/antigen/antigen.zsh
# Load all of the config files in ~/oh-my-zsh that end in .zsh
antigen use oh-my-zsh

antigen bundle colorize
antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting

# Load and run compinit
autoload -U compinit
compinit -i

# history
setopt histignoredups
export HISTSIZE=10000

# autocorrect
setopt CORRECT CORRECT_ALL

# colorize listings (especially in `tree`)
export LS_COLORS="no=00:di=34:ln=35:so=33"
export LS_COLORS="ex=37;41:$LS_COLORS"
export LS_COLORS="*.zip=36:*.rar=36:*.tar=36:*.gz=36:*.tar.gz=36:*.7z=36:$LS_COLORS"
export LS_COLORS="*.c=32:*.cc=32:*.cpp=32:*.m=32:*.rb=32:*.pl=32:*.php=32:*.java=32:$LS_COLORS"
export LS_COLORS="*.h=33:*.hpp=33:$LS_COLORS"
export LS_COLORS="*.o=30:*.d=30:$LS_COLORS"
export LS_COLORS="*Makefile=35:*.mk=35:*Rakefile=35:$LS_COLORS"

# use 256 colors (fixes tmux colors)
export TERM="xterm-256color"

# highlight grep results
export GREP_COLOR="1;31"

#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/kay/.gvm/bin/gvm-init.sh" ]] && source "/Users/kay/.gvm/bin/gvm-init.sh"
