##############################################################################
# Things to make a Homebrew environment nicer.

# If homebrew seems to be installed...
if type -fq /opt/homebrew/bin/brew
    # ...do the rest of the shell environment setup.
    /opt/homebrew/bin/brew shellenv | source
end

### homebrew.fish ends here
