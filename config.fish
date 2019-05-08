##############################################################################
# General settings.

# Set the terminal type.
set -x TERM xterm-256color

# Always use less as my paper.
set -x PAGER less

# Ensure we always speak British.
set -x DICTIONARY british

# Extra path items.
add_path_maybe ~/.cargo/bin
add_path_maybe ~/.local/bin
add_path_maybe ~/bin

### config.fish ends here
