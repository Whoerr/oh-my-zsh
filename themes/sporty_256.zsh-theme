# zsh theme requires 256 color enabled terminal
# i.e TERM=xterm-256color
# Preview - http://www.flickr.com/photos/adelcampo/4556482563/sizes/o/
# based on robbyrussell's shell but louder!
function TIME()
{
  date | grep -oE "([0-9]{1,2}:[0-9]{2}:[0-9]{2})"
}
PROMPT='%{$fg_bold[blue]%}$(git_prompt_info)$(git_prompt_ahead)$(git_prompt_short_sha) %F{208}%c%f $fg[yellow][`pwd`]$reset_color
%{$fg_bold[white]%}%# %{$reset_color%}'
RPROMPT='$(TIME)|%B%F{208}%n%f%{$fg_bold[white]%}@%F{039}%m%f%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{154}±|%f%F{124}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}%B✘ ooh that's dirty.%F{154}|%f%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔ look at my horse!%F{154}|"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%}⇪ AHEAD⇪"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$fg[white]%} ("
ZSH_THEME_GIT_PROMPT_SHA_AFTER=")%{$reset_color%} "
