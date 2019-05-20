##############################################################################
# Configure less

set -x LESS MMiqC

# If we've got lesspipe...
if test -x /usr/bin/lesspipe
    # ...use that.
    set -x LESSOPEN "|/usr/bin/lesspipe %s"
end

# On the other hand, if we've got hilite...
if test -x /usr/share/source-highlight/src-hilite-lesspipe.sh
    # ...use that instead.
    set -x LESS "$LESS"R
    set -x LESSOPEN "|/usr/share/source-highlight/src-hilite-lesspipe.sh %s"
end

### less.fish ends here
