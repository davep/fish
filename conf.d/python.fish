##############################################################################
# Set up things to do with Python.

# Don't let pipenv mess with my prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT yes

# Have pipenv always keep the venv in the project directory.
set -x PIPENV_VENV_IN_PROJECT true

# Ensure that Python uses an rc file when we start the repl.
set -x PYTHONSTARTUP ~/.pythonrc.d/pythonrc

# See if .pyenv lives locally. While I tend to homebrew things on my Mac, I
# tend to install locally on GNU/Linux. If it's done via homebrew on the Mac
# it'll be in /usr/local/bin so it's in the path already.
add_path_maybe ~/.pyenv/bin

# If pyenv is in the path and this is an interactive shell...
if type -q pyenv and status is-interactive
    pyenv init --path | source
    pyenv init - | source
end

### python.fish ends here
