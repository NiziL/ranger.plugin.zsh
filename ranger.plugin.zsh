function ranger_prompt() {
  if [[ $RANGER_LEVEL -eq 1 ]]; then
    echo "${ZSH_THEME_RANGER_ONE_PROMPT_PREFIX}${ZSH_THEME_RANGER_ONE_BODY}${ZSH_THEME_RANGER_ONE_PROMPT_SUFFIX}"
  elif [[ $RANGER_LEVEL -gt 1 ]]; then
    echo "${ZSH_THEME_RANGER_MANY_PROMPT_PREFIX}${ZSH_THEME_RANGER_MANY_BODY}${ZSH_THEME_RANGER_MANY_PROMPT_SUFFIX}"
  else
    echo ""
  fi
}

ZSH_THEME_RANGER_ONE_PROMPT_PREFIX="["
ZSH_THEME_RANGER_ONE_PROMPT_SUFFIX="]"
ZSH_THEME_RANGER_MANY_PROMPT_PREFIX="[!"
ZSH_THEME_RANGER_MANY_PROMPT_SUFFIX="!]"
ZSH_THEME_RANGER_ONE_BODY="ranger"
ZSH_THEME_RANGER_MANY_BODY="ranger"

function rr() {
  local tmp="$(mktemp -t "ranger-cwd.XXXXXX")"
  ranger --choosedir="$tmp" "$@"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

