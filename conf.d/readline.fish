##############################################################################
# Ensure the correct readline configuration is used.

# If https://github.com/davep/.inputrc.d is installed...
if test -d ~/.inputrc.d
    set -gx INPUTRC ~/.inputrc.d/inputrc
end

# Also, if rlwrap is installed...
if type -fq rlwrap
    # ...wrap various REPLs if I also have them.
    type -fq clojure; and alias clojure="rlwrap clojure"
    type -fq csi; and alias csi="rlwrap csi"
    type -fq ros; and alias lisp="rlwrap ros run"
    type -fq scheme48; and alias scheme48="rlwrap scheme48"
end

### readline.fish ends here
