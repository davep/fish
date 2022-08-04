##############################################################################
# Abbreviations related to Python stuff.
abbr -g pylintshame "rg --no-messages \"pylint:disable=\" | awk 'BEGIN{FS=\"disable=\";}{print \$2}' | tr \",\" \"\n\" | sort | uniq -c | sort -hr"

### python.fish ends here
