autoload -Uz compinfo vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' actionformats 'on %F{red} %b%f ' 
precmd() {
  vcs_info
}

setopt prompt_subst
PROMPT='%F{green}󰁕%f %c ${vcs_info_msg_0_}%# '
