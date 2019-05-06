##############################################################################
# Set some base options for the ls command.
function ls -d "Base ls command with extras added"
    switch (uname)
        case "Darwin"
            /bin/ls -F $argv
        case "*"
            /bin/ls -F --color $argv
    end
end

### ls.fish ends here
