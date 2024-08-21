##############################################################################
# Things to make a Homebrew environment nicer.

# If homebrew seems to be installed (brew itself should be in my path
# because I set that in 00_path.fish)...
if type -fq brew
    # ...do the rest of the shell environment setup.
    brew shellenv | source
end

### homebrew.fish ends here
