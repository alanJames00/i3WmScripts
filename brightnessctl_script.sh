




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
    
    ;;
    
esac
