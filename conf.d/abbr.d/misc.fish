##############################################################################
# Abbreviations that don't really fit in any obvious category (yet).

abbr -g c clear
abbr -g greedy "du -hs * | sort -rh"
abbr -g cmdfreq "history | cut -d \" \" -f 1 | sort | uniq -c | sort -rh"
abbr -g fcfg "cd ~/.config/fish"
abbr -g flcfg "cd ~/.config/local-fish"

# Make using https://github.com/jarun/googler shorter.
if type -q googler
    abbr -g goog googler
end

# Easily call on https://alexjs.com/
if type -q npx
    abbr -g lintinc "npx alex"
end

### misc.fish ends here
