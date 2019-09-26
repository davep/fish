##############################################################################
# Assorted handy aliases. Things that don't require a function really.

# There seems to be a clash with /bin/open on some GNU/Linux boxes, and
# fish's own open command. So if I'm on a system with a /bin/open, let's
# simply alias it to xdg-open.
if test -x /bin/open
    alias open="xdg-open > /dev/null 2>&1"
end

### aliases.fish ends here
