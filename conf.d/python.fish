##############################################################################
# Set up things to do with Python.

# Don't let pipenv mess with my prompt
export VIRTUAL_ENV_DISABLE_PROMPT=yes

# Have pipenv always keep the venv in the project directory.
export PIPENV_VENV_IN_PROJECT=true

# Ensure that Python uses an rc file when we start the repl.
export PYTHONSTARTUP=~/.pythonrc

### pipenv.fish ends here
