##############################################################################
# Command to open a file in an appropriate program.

function o -d "Open a file in the most appropriate program"
    switch (uname)
        case "Darwin"
            open $argv
        case "Linux"
            xdg-open > /dev/null 2> /dev/null $argv
        case "*"
            echo "I don't know how to open things here"
    end
end

### o.fish ends here
