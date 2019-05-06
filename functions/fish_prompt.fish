##############################################################################
# Useful characters.
set segment_separator \uE0B0

##############################################################################
# Colours
set cwd_bg 3a3a3a
set cwd_fg white #888888

##############################################################################
# Print the current working directory.
function prompt_cwd
    echo -n " " (prompt_pwd) " "
end

##############################################################################
# Main prompt-setting code.
function fish_prompt

    set_color -b $cwd_bg
    set_color $cwd_fg

    prompt_cwd

    set_color normal
    set_color $cwd_bg
    echo -n $segment_separator

    echo -n " "

    set_color normal

end

### fish_prompt.fish ends here
