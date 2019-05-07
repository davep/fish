##############################################################################
# Attempt go visit the origin hub for the current repo.

function gh -d "Visit the repo in its origin hub"

    # Check that there is some sort of origin.
    set origin (git config --get remote.origin.url)

    # If we didn't get anything...
    if not test "$origin"
        # ...complain and exit.
        echo "This doesn't appear to be a git repo with an origin"
        return 1
    end

    # Remove the protocol.
    set origin (echo $origin | cut -d "@" -f2)

    # Get the host.
    set host (echo $origin | cut -d ":" -f1)

    # Get the location.
    set location (string replace -r '\.git$' "" (echo $origin | cut -d ":" -f2))

    # Open in the browser.
    o "https://$host/$location"

end

### gh.fish ends here
