# TODO: This is far from complete (no pun...). I need to properly wrap my
# head around how custom completions actually work.

# Start clean.
complete -c dnote --erase

# Add completion for the main commands.
complete -c dnote -fa add     -d "Add a new note"
complete -c dnote -fa edit    -d "Edit a note or a book"
complete -c dnote -fa find    -d "Find notes by keywords"
complete -c dnote -fa help    -d "Help about any command"
complete -c dnote -fa login   -d "Login to dnote server"
complete -c dnote -fa logout  -d "Logout from the server"
complete -c dnote -fa remove  -d "Remove a note or a book"
complete -c dnote -fa sync    -d "Sync data with the server"
complete -c dnote -fa version -d "Print the version number of Dnote"
complete -c dnote -fa view    -d "List books, notes or view a content"

### dnote.fish ends here
