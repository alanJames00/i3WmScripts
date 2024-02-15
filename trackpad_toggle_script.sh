
# xinput device id of trackpad
trackpad_id=11

# Get current trackpad status
function get_trackpad_status {
    st=$(xinput list-props $trackpad_id | grep "Device Enabled" | grep -o "[01]$" )
    
    # trackpad status can be 1 or 0 based on whether it is enabled or not
    echo $st
}


# Main function
status=$(get_trackpad_status)

case $status in

    1)  
        echo "enabled"
        # currently enabled so disable
    ;;
    0)  
        echo "dis"
        # currently disabled so enable
esac