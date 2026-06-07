##############################################################################
# Abbreviations for image manipulation commands.

if type -q mogrify
    abbr -g webppng "mogrify -format webp -define webp:lossless=true -quality 100"
    abbr -g webpjpg "mogrify -format webp -quality 95"
end

if type -q exiftool
    abbr -g nogps "exiftool -gps:all= -overwrite_original"
end

### images.fish ends here
