##############################################################################
# Abbreviations related to installing and upgrading things.

# Locals.
set -l upd ""
set -l upg ""

# Decide which commands to use depending on environment.
switch (uname)
    case "Linux"
        set upd "sudo apt update"
        set upg "sudo apt upgrade; sudo apt autoremove; sudo apt autoclean"
    case "Darwin"
        set upd "brew update"
        set upg "brew upgrade; brew cleanup"
        abbr -g bi "brew install"
        abbr -g bu "brew uninstall"
        abbr -g bs "brew search"
    case "*"
        exit
end

# I use rust in more than one place, so if cargo exists...
if type -q cargo
    set upg "$upg; cargo install-update -a"
end

# I use pipx in more than once place, so if pipx exists...
if type -q pipx
    set upg "$upg; pipx upgrade-all"
end

# Create the aliases for doing updates and upgrades.
abbr -g upd "$upd"
abbr -g upg "$upg"
abbr -g upall "$upd; $upg"

### updates.fish ends here
