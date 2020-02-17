##############################################################################
# Custom keyboard bindings.

function fish_user_key_bindings -d "My fish keyboard bindings"
    # I Ctrl-D by accident in the shell way more than I Ctrl-D on purpose in
    # the shell. Erase it.
    bind --erase --preset \cd
end

### fish_user_key_bindings.fish ends here
