##############################################################################
# Load up any local config.
#
# Some things are specific to a machine, or specific to a location, and
# don't really being in my central repository (think work-related stuff,
# etc). So this code will load everything inside ~/.config/local_fish

for local_conf in ~/.config/local-fish/*.fish
    source $local_conf
end

### local_config.fish ends here
