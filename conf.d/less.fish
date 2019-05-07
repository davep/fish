##############################################################################
# Configure less

set -x LESS MMiqC

if test -x /usr/bin/lesspipe
    set -x LESSOPEN "|/usr/bin/lesspipe %s"
end

### less.fish ends here
