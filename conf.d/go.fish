##############################################################################
# Configure things to do with Go.

# If I have go installed...
if type -q go
    # ...stop it from visibly shitting in my ~
    set -x GOPATH ~/.go
end

### go.fish ends here
