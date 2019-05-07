##############################################################################
# Set up things to do with Python.

# Don't let pipenv mess with my prompt
set -x VIRTUAL_ENV_DISABLE_PROMPT yes

# Have pipenv always keep the venv in the project directory.
set -x PIPENV_VENV_IN_PROJECT true

# Ensure that Python uses an rc file when we start the repl.
set -x PYTHONSTARTUP ~/.pythonrc

### pipenv.fish ends here
