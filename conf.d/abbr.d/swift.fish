##############################################################################
# Abbreviations to help with swift hacking.

# If we're somewhere where swift is installed...
if type -q swift
    abbr -g swexe "swift package init --type executable"
    abbr -g swb "swift build"
    abbr -g swr "swift run"
end

### swift.fish ends here
