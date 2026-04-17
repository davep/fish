##############################################################################
# Abbreviations for image manipulation commands.

if type -q mogrify
    abbr -g webppng "mogrify -format webp -define webp:lossless=true -quality 100"
    abbr -g webpjpg "mogrify -format webp -quality 95"
end

### images.fish ends here
