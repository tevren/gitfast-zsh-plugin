dir=$(dirname $0)
source $HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-tevren-SLASH-git-zsh-plugin.git/git.plugin.zsh
source $dir/git-prompt.sh

function git_prompt_info() {
  dirty="$(parse_git_dirty)"
  __git_ps1 "${ZSH_THEME_GIT_PROMPT_PREFIX//\%/%%}%s${dirty//\%/%%}${ZSH_THEME_GIT_PROMPT_SUFFIX//\%/%%}"
}
