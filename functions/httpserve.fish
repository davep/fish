##############################################################################
# Quickly open a web server and serve the current working directory.

function httpserve -d "Very simple web server for the current working directory."
    echo ============================================================
    echo Serving (pwd)
    echo ============================================================
    python3 -m http.server 8765 &
    open http://127.0.0.1:8765
    fg
end

### httpserve.fish ends here
