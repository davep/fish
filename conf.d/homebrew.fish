##############################################################################
# Things to make a Homebrew environment nicer.

# If we're on macOS...
if string match -q (uname) "Darwin"

    # Ensure openssl library directory is seen by things.
    if test -d "/usr/local/opt/openssl@1.1/"
        add_path_maybe "/usr/local/opt/openssl@1.1/bin"
        set -agx LDFLAGS "-L/usr/local/opt/openssl@1.1/lib/"
        set -agx LIBRARY_PATH "/usr/local/opt/openssl@1.1/lib/"
        set -agx CPPFLAGS "-I/usr/local/opt/openssl@1.1/include"
        set -agx PKG_CONFIG_PATH "/usr/local/opt/openssl@1.1/lib/pkgconfig"
    end

    # Ensure MySQL client library is seen by things.
    if test -d "/usr/local/opt/mysql-client/"
        add_path_maybe "/usr/local/opt/mysql-client/bin"
        set -agx LDFLAGS "-L/usr/local/opt/mysql-client/lib"
        set -agx LIBRARY_PATH "/usr/local/opt/mysql-client/lib"
        set -agx CPPFLAGS "-I/usr/local/opt/mysql-client/include"
        set -agx PKG_CONFIG_PATH "/usr/local/opt/mysql-client/lib/pkgconfig"
    end

end

### homebrew.fish ends here
