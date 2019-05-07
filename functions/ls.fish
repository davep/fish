##############################################################################
# Set some base options for the ls command.
function ls -d "Base ls command with extras added"

    # Decide on the base arguments.
    switch (uname)
        case "Darwin"
            set args -F
        case "*"
            set args -F --color
    end

    # Actually ls.
    command ls $args $argv

end

### ls.fish ends here
