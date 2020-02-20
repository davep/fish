##############################################################################
# Attempt go visit the origin forge for the current repo.

function forge -d "Visit the repo in its origin forge"

    # Check that there is some sort of origin.
    set origin (git config --get remote.origin.url)

    # If we didn't get anything...
    if not test "$origin"
        # ...complain and exit.
        echo "This doesn't appear to be a git repo with an origin"
        return 1
    end

    # Open in the browser.
    open "https://"(string replace ":" "/" (string replace -r '\.git$' "" (string split "@" $origin)[ 2 ]))

end

### forge.fish ends here
