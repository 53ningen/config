stty -ixon
stty -ixoff

# import
source ~/.zsh_alias

# config
JAVA_VERSION=1.8

# env
export LANG=ja_JP.UTF-8

# history
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# zstyle
zstyle :compinstall filename '/Users/yuki_yanagi/.zshrc'
autoload -Uz compinit # 補完を有効にする 
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # 補完で大文字と小文字を区別しない
zstyle ':zle:*' word-chars " /=;@:{},|"
zstyle ':zle:*' word-style unspecified
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*' ignore-parents parent pwd ..
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# color
autoload -Uz colors
colors

# prompt
PROMPT="%{${fg[red]}%}[%n@%m]%{${reset_color}%} %~
%# "

# options 
setopt print_eight_bit
setopt no_beep
setopt no_flow_control
setopt interactive_comments
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups
setopt magic_equal_subst
setopt share_history
setopt hist_ignore_all_dups
setopt hist_save_nodups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt auto_menu
setopt extended_glob

# vcs_info
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '(%s)-[%b]'
zstyle ':vcs_info:*' actionformats '(%s)-[%b|%a]'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"

# bind
bindkey -e

# java_home
export JAVA_HOME=`/usr/libexec/java_home -v $JAVA_VERSION`

