##############################################################################
# Assorted handy abbreviations. Things that don't require a function really.

# Directory listings.
abbr -g d ls
abbr -g v "ls -l"
abbr -g up "cd .."
abbr -g ... "cd ../.."
abbr -g .... "cd ../../.."
abbr -g prev "cd -"

# Be really lazy when opening things.
abbr -g o open
abbr -g l less
abbr -g m more

# Be lazy when doing some things.
abbr -g c clear
abbr -g greedy "du -hs * | sort -rh"
abbr -g cmdfreq "history | cut -d \" \" -f 1 | sort | uniq -c | sort -rh"

# Make using https://github.com/jarun/googler shorter.
if type -q googler
    abbr -g goog googler
end

# Python things
abbr -g p2 python2
abbr -g p3 python3
abbr -g pylintshame "rg --no-messages \"pylint:disable=\" | awk 'BEGIN{FS=\"disable=\";}{print \$2}' | tr \",\" \"\n\" | sort | uniq -c | sort -hr"

# Git things
abbr -g gp "git pull"
abbr -g gin "git init"
abbr -g gd "git diff"
abbr -g gco "git checkout"
abbr -g gstat "git status"
abbr -g gdev "git checkout develop"
abbr -g gmas "git checkout master"

# If https://github.com/o2sh/onefetch is installed.
if type -q onefetch
    abbr -g of onefetch
end

# Installing and updating things.
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

### abbreviations.fish ends here
