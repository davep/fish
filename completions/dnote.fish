# TODO: This is far from complete (no pun...). I need to properly wrap my
# head around how custom completions actually work.

# List of commands.
set -l dnote_commands add edit find help login logout remove sync version

# Start clean.
complete -c dnote --erase

# Add completion for the main commands.
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa add     -d "Add a new note"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa edit    -d "Edit a note or a book"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa find    -d "Find notes by keywords"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa help    -d "Help about any command"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa login   -d "Login to dnote server"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa logout  -d "Logout from the server"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa remove  -d "Remove a note or a book"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa sync    -d "Sync data with the server"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa version -d "Print the version number of Dnote"
complete -c dnote -n "not __fish_seen_subcommand_from $dnote_commands" -fa view    -d "List books, notes or view a content"

### dnote.fish ends here
