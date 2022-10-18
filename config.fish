##############################################################################
# General settings.

# If we're a dumb terminal give up on using fish and just go with the
# default system shell. This might seem a bit OTT but it really helps with
# all sorts of issues with tramp on GNU Emacs.
if [ "$TERM" = "dumb" ]
    exec /bin/sh -l
end

# Set the terminal type.
set -x TERM xterm-256color

# Always use less as my paper.
set -x PAGER less

# Ensure we always speak British.
set -x DICTIONARY british

### config.fish ends here
