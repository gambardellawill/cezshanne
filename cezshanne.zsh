#####################################################################
# cezshanne - a minimal, yet elegant zsh theme.
# @author: William Gambardella <github.com/gambardellawill>
# @created: May 10, 2024
#####################################################################

autoload -Uz compinit vcs_info
zstyle ':vcs_info:*' enable git

# @todo: checking for changes in the repository
if [ -v CZTHEME_GIT_CHANGES ]; then
	echo $CZTHEME_GIT_CHANGES
	zstyle ':vcs_info:*' check-for-changes true
	zstyle ':vcs_info:git:*' formats 'on %F{red} %b%f %F{yellow}[%c%u]%f '
else
	zstyle ':vcs_info:git:*' formats 'on %F{red} %b%f ' 
fi

precmd() {
  vcs_info
}

setopt prompt_subst
PROMPT='%F{green}󰁕%f %c %# '
RPROMPT='${vcs_info_msg_0_}'
