##############################################################################
# Abbreviations related to installing and upgrading things.

switch (uname)
    case "Linux"
        abbr -g upd "sudo apt update"
        abbr -g upg "sudo apt upgrade; sudo apt autoremove; sudo apt autoclean"
    case "Darwin"
        abbr -g upd "brew update"
        abbr -g upg "brew upgrade; brew cleanup"
        abbr -g bi "brew install"
        abbr -g bu "brew uninstall"
        abbr -g bs "brew search"
end

# A "do all" updating/upgrading abbreviation.
if test "$_fish_abbr_upd"
    abbr -g upall "$_fish_abbr_upd; $_fish_abbr_upg"
end

# I use rust in more than one place, so if cargo exists...
if type -q cargo
    abbr -g cargup "cargo install-update -a"
end

### updates.fish ends here
