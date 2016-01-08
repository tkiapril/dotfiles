export GTK_IM_MODULE='uim'
export QT_IM_MODULE='uim'
uim-xim &
export XMODIFIERS='@im=uim'

# gnome is the default
session=${1:-gnome}

case $session in
    gnome ) dbus-launch --exit-with-session gnome-session;;
    x2go  ) dbus-launch --exit-with-session x2goclient --maximize;;
    cocoa ) dbus-launch --exit-with-session x2goclient --session=cocoa --maximize;;
    # No known session, try to run as command
    *) exec $1;;
esac
