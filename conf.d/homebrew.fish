##############################################################################
# Things to make a Homebrew environment nicer.

# If we're on macOS...
if string match -q (uname) "Darwin"

    # Ensure openssl library directory is seen by things.
    set -l ossldir "/usr/local/opt/openssl@1.1"
    if test -d $ossldir
        add_path_maybe "$ossldir/bin"
        set -agx LDFLAGS "-L$ossldir/lib/"
        set -agx LIBRARY_PATH "$ossldir/lib/"
        set -agx CPPFLAGS "-I$ossldir/include"
        set -agx PKG_CONFIG_PATH "$ossldir/lib/pkgconfig"
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
