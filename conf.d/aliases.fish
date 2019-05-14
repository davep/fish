##############################################################################
# Assorted handy aliases. Things that don't require a function really.

# Directory listings.
alias vdir=dir
alias d=dir
alias v=vdir
alias ...="cd ../.."
alias ....="cd ../../.."

# Be really lazy when opening things.
alias o=open
alias l=less
alias m=more

# Python things
alias p2=python2
alias p3=python3

# If I have rlwrap and Clojure...
if type -q rlwrap and type -q clojure
    # ...have the Clojure repl work nicer.
    alias clojure="rlwrap clojure"
end

# There seems to be a clash with /bin/open on some GNU/Linux boxes, and
# fish's own open command. So if I'm on a system with a /bin/open, let's
# simply alias it to xdg-open.
if test -x /bin/open
    alias open="xdg-open > /dev/null 2>&1"
end

### aliases.fish ends here
