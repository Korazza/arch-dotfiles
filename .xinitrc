if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

# screens
xrandr --output HDMI-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-0 --off --output DP-1 --off --output HDMI-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-2 --off --output DP-3 --off


[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

exec i3
