##############################################################################
# Abbreviations related to Python stuff.
abbr -g p2 python2
abbr -g p3 python3
abbr -g pylintshame "rg --no-messages \"pylint:disable=\" | awk 'BEGIN{FS=\"disable=\";}{print \$2}' | tr \",\" \"\n\" | sort | uniq -c | sort -hr"

### python.fish ends here
