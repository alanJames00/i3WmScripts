
bar_color="#7f7fff"



# get current brightess
function get_brightness {
    brightness=$(brightnessctl g | cut -d '.' -f 1)

    # get percentage of brightness

    # Min value = 100
    # Max value = 255
    brightness_per=$(($brightness * 100 /255))
    echo $brightness_per
}

# Push Notificatio
function send_notification {
    bper=$(get_brightness)

    # dunstify is used to send the notification
    dunstify -t 1000 -r 2593 -u normal "🔆 $bper%" -h int:value:$bper -h string:hlcolor:$bar_color

}


# Main function => cmdArgs can be: up or down

case $1 in
up)
    # Handle brightness up case
    brightnessctl set +5%
    send_notification
    ;;
    

    down)
    # handle brightness down case
    brightnessctl set 5%-
    send_notification

    ;;

    *)
    echo "Invalid argument"
    get_brightness
    ;;
    
esac
