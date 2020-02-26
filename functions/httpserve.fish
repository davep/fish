##############################################################################
# Quickly open a web server and serve the current working directory.

function httpserve -d "Very simple web server for the current working directory."
    echo ============================================================
    echo Serving (pwd)
    echo ============================================================
    python3 -m http.server (random 8100 8900)
end

### httpserve.fish ends here
