##############################################################################
# Abbreviations related to working with git.

abbr -g gp "git pull"
abbr -g gin "git init"
abbr -g gd "git diff"
abbr -g gb "git branch"
abbr -g gbd "git branch -D"
abbr -g gco "git checkout"
abbr -g gstat "git status"
abbr -g gdev "git checkout develop"
abbr -g gma "git checkout main"
abbr -g gst "git status"
abbr -g gus "git branch --set-upstream-to=origin/(git rev-parse --abbrev-ref HEAD) (git rev-parse --abbrev-ref HEAD)"
abbr -g nuke-branches "git branch -d (git branch | grep -Ev '(main|master)\$' | xargs | string split ' ')"

# If https://github.com/o2sh/onefetch is installed.
if type -q onefetch
    abbr -g of onefetch
end

### git.fish ends here
