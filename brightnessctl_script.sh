
# get current brightess
function get_brightness {
    brightness=$(brightnessctl g | cut -d '.' -f 1)

    # get percentage of brightness

    # Min value = 100
    # Max value = 255
    brightness_per=$(($brightness * 100 /255))
    echo $brightness_per
}



# Main function => cmdArgs can be: up or down

case $1 in

    up)
    echo "upping"
    
    ;;

    down)
    echo "downing"

    ;;

    *)
    echo "Invalid argument"
    get_brightness
    ;;
    
esac