##############################################################################
# Prompt configuration. This code assumes that the agnoster prompt is being
# used: https://github.com/oh-my-fish/theme-agnoster

# Prompt colours
set -g color_dir_bg 3a3a3a
set -g color_dir_str white
set -g color_git_dirty_bg d7af5f
set -g color_git_dirty_str 626262
set -g color_git_bg green
set -g color_git_str 005f00
if set -q SSH_CLIENT
    set -g color_user_bg red
    set -g color_user_str white
else
    set -g color_user_bg 262626
    set -g color_user_str 767676
end

# Prompt contents
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g fish_prompt_pwd_dir_length 1

### prompt_config.fish ends here
