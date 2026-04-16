##############################################################################
# Abbreviations for image manipulation commands.

if type -q mogrify
    abbr -g mkwebp "mogrify -format webp -define webp:lossless=true -quality 100"
end

### images.fish ends here
