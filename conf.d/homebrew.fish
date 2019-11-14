##############################################################################
# Things to make a Homebrew environment nicer.

# If we're on macOS...
if string match -q (uname) "Darwin"

    # Ensure openssl library directory is seen by things.
    if test -d /usr/local/opt/openssl/lib/
        set LDFLAGS /usr/local/opt/openssl/lib/ $LDFLAGS
        set LIBRARY_PATH /usr/local/opt/openssl/lib/ $LIBRARY_PATH
    end

end

### homebrew.fish ends here
