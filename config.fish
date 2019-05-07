##############################################################################
# General settings.

# Set the terminal type.
set -x TERM xterm-256color

# Always use less as my paper.
set -x PAGER less

# Ensure we always speak British.
set -x DICTIONARY british

# Extra path items.
set PATH ~/.cargo/bin $PATH
set PATH ~/.local/bin $PATH
set PATH ~/bin        $PATH

### config.fish ends here
