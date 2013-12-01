if not status --is-interactive
	exit 0
end

# Add ~/bin to $PATH
set -g fish_user_paths ~/bin

# Other environment variables
set -g EDITOR nano

# Customize the Git test suite
set -g GIT_NOTES_TIMING_TESTS 1
set -g NO_SVN_TESTS 1

# Fish settings
set -g fish_greeting ''

# Git prompt
set -g __fish_git_prompt_showcolorhints yes
set -g __fish_git_prompt_showdirtystate yes
set -g __fish_git_prompt_showstashstate yes
set -g __fish_git_prompt_showupstream git

# Git prompt colors
set -g __fish_git_prompt_color yellow  --bold
set -g __fish_git_prompt_color_branch yellow  --bold
set -g __fish_git_prompt_color_branch_detached red  --bold
set -g __fish_git_prompt_color_bare purple  --bold
set -g __fish_git_prompt_color_merging red  --bold
set -g __fish_git_prompt_color_dirtystate red  --bold
set -g __fish_git_prompt_color_stagedstate green  --bold

# Git prompt characters
set -g __fish_git_prompt_char_dirtystate '⨯'
set -g __fish_git_prompt_char_stagedstate '+'
set -g __fish_git_prompt_char_upstream_diverged '≄'

# Fish prompt colors
set -g fish_color_user cyan
set -g fish_color_host cyan  --bold
set -g fish_color_cwd blue  --bold
set -g fish_color_cwd_root red
set -g fish_color_status red

# Fish command-line colors
set -g fish_color_command green  --bold
set -g fish_color_param normal  --bold
set -g fish_color_error red  --bold
set -g fish_color_valid_path blue --bold
set -g fish_color_quote normal  --underline
set -g fish_color_comment black  --bold
set -g fish_color_escape purple  --bold
set -g fish_color_redirection purple  --bold
set -g fish_color_operator cyan  --bold
set -g fish_color_match cyan
set -g fish_color_end purple --bold

# Fish history search
set -g fish_color_history_current cyan
set -g fish_color_search_match --background=yellow

# Fish completion colors
set -g fish_color_autosuggestion black --bold
set -g fish_pager_color_completion normal
set -g fish_pager_color_description cyan
set -g fish_pager_color_prefix white  --bold
set -g fish_pager_color_progress cyan

exit 0
