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

    # Open in the browser.
    o "https://"(string replace ":" "/" (string replace -r '\.git$' "" (string split "@" $origin)[ 2 ]))

end

### gh.fish ends here
