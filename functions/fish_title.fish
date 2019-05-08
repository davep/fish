##############################################################################
# Set the terminal title.

function fish_title -d "Set the terminal title"

    # I'm going to use the prompt-friendly path, but I don't want elements
    # truncated. So let's locally ensure that every element of the path is
    # written out.
    set -l save_len $fish_prompt_pwd_dir_length
    set fish_prompt_pwd_dir_length 0

    # Emit the terminal title.
    echo (whoami)@(hostname) (prompt_pwd)

    # Restore the prompt dir length setting.
    set fish_prompt_pwd_dir_length $save_len

end

### fish_title.fish ends here
