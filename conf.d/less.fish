##############################################################################
# Configure less

set -x LESS MMiqC

# If we've got lesspipe...
if test -x /usr/bin/lesspipe
    # ...use that.
    set -x LESSOPEN "|/usr/bin/lesspipe %s"
end

# On the other hand, if we've got hilite in /usr/...
if test -x /usr/share/source-highlight/src-hilite-lesspipe.sh
    # ...use that instead.
    set -x LESS "$LESS"R
    set -x LESSOPEN "|/usr/share/source-highlight/src-hilite-lesspipe.sh %s"
else if type -fq src-hilite-lesspipe.sh
    # Okay, so it wasn't where we'd often expect, but it is in the path, so
    # let's go with that.
    set -x LESS "$LESS"R
    set -x LESSOPEN "|src-hilite-lesspipe.sh %s"
end

# Finally, as the best option, if https://github.com/Textualize/rich-cli is
# installed...
if type -q rich
    set -x LESS "$LESS"R
    set -x LESSOPEN "|rich --force-terminal %s"
end

### less.fish ends here
