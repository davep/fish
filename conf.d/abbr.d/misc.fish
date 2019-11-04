##############################################################################
# Abbreviations that don't really fit in any obvious category (yet).

abbr -g c clear
abbr -g greedy "du -hs * | sort -rh"
abbr -g cmdfreq "history | cut -d \" \" -f 1 | sort | uniq -c | sort -rh"

# Make using https://github.com/jarun/googler shorter.
if type -q googler
    abbr -g goog googler
end

### misc.fish ends here
