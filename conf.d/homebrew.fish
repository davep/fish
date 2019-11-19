##############################################################################
# Things to make a Homebrew environment nicer.

# If we're on macOS...
if string match -q (uname) "Darwin"

    # Ensure openssl library directory is seen by things.
    if test -d /usr/local/opt/openssl/lib/
        set LDFLAGS "-L/usr/local/opt/openssl/lib/" $LDFLAGS
        set LIBRARY_PATH "/usr/local/opt/openssl/lib/" $LIBRARY_PATH
    end

    # Ensure MySQL client library is seen by things.
    if test -d "/usr/local/opt/mysql-client@5.7/"
        add_path_maybe "/usr/local/opt/mysql-client@5.7/bin"
        set LDFLAGS "-L/usr/local/opt/mysql-client@5.7/lib" $LDFLAGS
        set LIBRARY_PATH "/usr/local/opt/mysql-client@5.7/lib" $LIBRARY_PATH
        set CPPFLAGS "-I/usr/local/opt/mysql-client@5.7/include" $CPPFLAGS
        set PKG_CONFIG_PATH "/usr/local/opt/mysql-client@5.7/lib/pkgconfig" $PKG_CONFIG_PATH
    end

end

### homebrew.fish ends here
