##############################################################################
# Compile Elisp files.

function elc -d "Compile Emacs Lisp files"
    emacs -batch -f batch-byte-compile $argv
end

### elc.fish ends here
