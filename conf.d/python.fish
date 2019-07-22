##############################################################################
# Set up things to do with Python.

# Don't let pipenv mess with my prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT yes

# Have pipenv always keep the venv in the project directory.
set -x PIPENV_VENV_IN_PROJECT true

# Ensure that Python uses an rc file when we start the repl.
set -x PYTHONSTARTUP ~/.pythonrc

# If it looks like we have pyenv kicking around...
if test -d ~/.pyenv/bin
    # ...add it to the path.
    set PATH ~/.pyenv/bin $PATH
    # Set up pyenv support in fish.
    status --is-interactive; and source (pyenv init - | psub)
end

### python.fish ends here
