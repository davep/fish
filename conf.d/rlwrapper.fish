##############################################################################
# Add some readline support to REPLs that don't have it.

# If I have rlwrap...
if type -fq rlwrap
    # ...wrap various REPLs if I also have them.
    type -fq clojure; and alias clojure="rlwrap clojure"
    type -fq csi; and alias csi="rlwrap csi"
end

### rlwrapper.fish ends here
