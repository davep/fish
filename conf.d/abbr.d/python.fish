##############################################################################
# Abbreviations related to Python stuff.

abbr -g pylintshame "rg --no-messages \"pylint:disable=\" | awk 'BEGIN{FS=\"disable=\";}{print \$2}' | tr \",\" \"\n\" | sort | uniq -c | sort -hr"

if type -q poetry; and status is-interactive;
    abbr -g pe poetry;
    abbr -g pes poetry shell;
    abbr -g pei poetry init;
    abbr -g per poetry run;
    abbr -g pep poetry run python;
end

### python.fish ends here
