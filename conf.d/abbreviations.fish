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

# Git things
abbr -g gp "git pull"
abbr -g gin "git init"
abbr -g gd "git diff"
abbr -g gstat "git status"
abbr -g gdev "git checkout develop"
abbr -g gmas "git checkout master"

# Installing and updating things.
switch (uname)
    case "Linux"
        abbr -g aupd "sudo apt update"
        abbr -g aupg "sudo apt upgrade; sudo apt autoremove; sudo apt autoclean"
    case "Darwin"
        abbr -g bupd "brew update"
        abbr -g bupg "brew upgrade"
        abbr -g bi "brew install"
        abbr -g bu "brew uninstall"
        abbr -g bs "brew search"
end

### abbreviations.fish ends here
