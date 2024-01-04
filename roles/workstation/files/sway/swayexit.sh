#!/bin/sh
lock() {
    # Times the screen off and puts it to background
    swayidle \
        timeout 10 'swaymsg "output * dpms off"' \
        resume 'swaymsg "output * dpms on"' &
    
    # Locks the screen immediately
    swaylock -i /home/pascal/.config/sway/wp/taranaki.jpeg
    
    # Kills swayidle background job
    pkill swayidle
}

case "$1" in
    lock)
        lock
        ;;
    logout)
        loginctl terminate-session self
        ;;
    suspend)
        lock -f && systemctl suspend
        ;;
    hibernate)
        lock -f && systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
