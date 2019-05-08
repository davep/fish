##############################################################################
# Add a directory to the path, but only if it exists.

function add_path_maybe -d "Add a directory to the path, but only if it exists"
    if test -d $argv[ 1 ]
        set PATH $argv[ 1 ] $PATH
    end
end

### add_path_maybe.fish ends here
