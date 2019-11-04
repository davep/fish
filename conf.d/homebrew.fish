##############################################################################
# Things to make a Homebrew environment nicer.

# If we're on macOS...
if string match -q (uname) "Darwin"

    # Ensure openssl library directory is in the LDFLAGS path.
    if test -d /usr/local/opt/openssl/lib/
        set LDFLAGS /usr/local/opt/openssl/lib/ $LDFLAGS
    end

end

### homebrew.fish ends here
