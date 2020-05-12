##############################################################################
# Get a weather forecast.

function wx -d "Get the current weather forecast"
    if type -q curl
        curl wttr.in
    else if type -q wget
        wget -qO - wttr.in
    end
end

### wx.fish ends here
