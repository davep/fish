##############################################################################
# Things to make a Homebrew environment nicer.

# If we're on macOS...
if string match -q (uname) "Darwin"

    # Ensure openssl library directory is seen by things.
    if test -d "/usr/local/opt/openssl@1.1/"
        add_path_maybe "/usr/local/opt/openssl@1.1/bin"
        set -gx LDFLAGS "-L/usr/local/opt/openssl@1.1/lib/" $LDFLAGS
        set -gx LIBRARY_PATH "/usr/local/opt/openssl@1.1/lib/" $LIBRARY_PATH
        set -gx CPPFLAGS "-I/usr/local/opt/openssl@1.1/include" $CPPFLAGS
        set -gx PKG_CONFIG_PATH "/usr/local/opt/openssl@1.1/lib/pkgconfig" $PKG_CONFIG_PATH
    end

    # Ensure MySQL client library is seen by things.
    if test -d "/usr/local/opt/mysql-client/"
        add_path_maybe "/usr/local/opt/mysql-client/bin"
        set -gx LDFLAGS "-L/usr/local/opt/mysql-client/lib" $LDFLAGS
        set -gx LIBRARY_PATH "/usr/local/opt/mysql-client/lib" $LIBRARY_PATH
        set -gx CPPFLAGS "-I/usr/local/opt/mysql-client/include" $CPPFLAGS
        set -gx PKG_CONFIG_PATH "/usr/local/opt/mysql-client/lib/pkgconfig" $PKG_CONFIG_PATH
    end

end

### homebrew.fish ends here
