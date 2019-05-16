##############################################################################
# Command to show directory/file use in the current location.
function greedy -d "Show which files/directories are being greedy"
    du -hs * | sort -rh
end

### greedy.fish ends here
