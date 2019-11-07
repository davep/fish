##############################################################################
# Abbreviations that only ever make sense on macOS.

# If we're on macOS...
if string match -q (uname) "Darwin"

    # When was this mac "born?"
    abbr -g macdob 'stat -f "%Sa" /var/db/.AppleSetupDone'

end

### macOS.fish ends here
