##############################################################################
# Configure things to do with Go.

# If I have go installed...
if type -q go
    # ...stop it from visibly shitting in my ~
    set -x GOPATH ~/.go
    fish_add_path --global --path ~/.go/bin
end

### go.fish ends here
