##############################################################################
# Load up all my abbreviations from the abbr.d directory.
#
# Rather than keep them all in one file (which I was doing), this lets me
# break them up a bit. I think it makes it far more tidy and easier to find
# thing.
#
# Note the name of this file is an attempt to ensure that abbreviations are
# loaded up after everything else; this means they can adapt to whatever
# else is set in the environment.

for abbr_file in ~/.config/fish/conf.d/abbr.d/*.fish
    source $abbr_file
end

### zz_abbr.fish ends here
