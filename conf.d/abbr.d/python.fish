##############################################################################
# Abbreviations related to Python stuff.

abbr -g pylintshame "rg --no-messages \"pylint:disable=\" | awk 'BEGIN{FS=\"disable=\";}{print \$2}' | tr \",\" \"\n\" | sort | uniq -c | sort -hr"

if type -q poetry; and status is-interactive;
    abbr -g pe poetry;
    abbr -g pes poetry shell;
    abbr -g pei poetry init;
    abbr -g per poetry run;
    abbr -g pt poetry run make test
    abbr -g pep poetry run python;
end

if type -q pipenv; and status is-interactive;
    abbr -g pv pipenv
    abbr -g pvs pipenv shell
    abbr -g pvr pipenv run
    abbr -g pvp pipenv run python
end

### python.fish ends here
