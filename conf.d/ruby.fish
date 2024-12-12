##############################################################################
# Set up things to do with ruby.

# Don't install gem stuff "globally".
set -x GEM_HOME ~/.local/share/gems
fish_add_path --global --path ~/.local/share/gems/bin

### ruby.fish ends here
