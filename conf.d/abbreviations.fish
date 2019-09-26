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

# Python things
abbr -g p2 python2
abbr -g p3 python3

# Updating things.
abbr -g aupd "sudo apt update"
abbr -g aupg "sudo apt upgrade; sudo apt autoremove; sudo apt autoclean"

### abbreviations.fish ends here
