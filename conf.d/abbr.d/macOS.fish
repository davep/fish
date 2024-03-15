##############################################################################
# Abbreviations that only ever make sense on macOS.

# If we're on macOS...
if string match -q (uname) "Darwin"

    # When was this mac "born?"
    abbr -g macdob 'stat -f "%Sa" /var/db/.AppleSetupDone'

    # Show some information about current WiFi
    abbr -g wifi "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport --getinfo"
    abbr -g wifils "/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport --scan"

    # Flush the DNS cache.
    abbr -g flushdns "sudo killall -HUP mDNSResponder"

    # Get the main system summary
    abbr -g macsum "system_profiler SPHardwareDataType"

    # Allow quickly getting to the Mac Installs tracking directory.
    abbr -g macin "cd ~/develop/tools/mac-installs"

    # iCloud gets stuck now and again, this helps unstick it. This of course
    # isn't really an abbreviation, but it'll help me remember the exact
    # command.
    abbr -g unstick-icloud "killall bird"

    # Tools for turning desktop widgets off and on.
    abbr -g widoff "defaults write com.apple.WindowManager StandardHideWidgets -int 1"
    abbr -g widon "defaults write com.apple.WindowManager StandardHideWidgets -int 0"

    # Tools for turning stage manager widgets off and on.
    abbr -g smwidoff "defaults write com.apple.WindowManager StageManagerHideWidgets -int 1"
    abbr -g smwidon "defaults write com.apple.WindowManager StageManagerHideWidgets -int 0"

end

### macOS.fish ends here
