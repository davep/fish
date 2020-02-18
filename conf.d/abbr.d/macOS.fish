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

end

### macOS.fish ends here
