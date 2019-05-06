##############################################################################
# Show the time on the right hand side of a prompt.
function fish_right_prompt -d "Right hand side prompt for fish"
    set_color 777777
    date "+%H:%M:%S"
    set_color normal
end

### fish_right_prompt.fish ends here
