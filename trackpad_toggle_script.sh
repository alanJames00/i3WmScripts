
# xinput device id of trackpad
trackpad_id=11

# Get current trackpad status
function get_trackpad_status {
    st=$(xinput list-props $trackpad_id | grep "Device Enabled" | grep -o "[01]$" )
    
    # trackpad status can be 1 or 0 based on whether it is enabled or not
    echo $st
}

function disable_trackpad {

    xinput --disable $trackpad_id

    # send notification
    notify-send "Trackpad Disabled"
}

function enable_trackpad {
    
    xinput --enable $trackpad_id

    # send notification
    notify-send "Trackpad Enabled"
}


# Main function
status=$(get_trackpad_status)

case $status in

    1)  
        # currently enabled so disable
        disable_trackpad

    ;;
    0)  
        # currently disabled so enable
        enable_trackpad

    ;;
esac