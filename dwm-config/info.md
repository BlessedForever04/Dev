This suckless setup includes various suckless components

suckless components used:
dmenu
dwm
slstatus
st

install dwm first and rest after that using : sudo make clean install
change the config.def.h file for configuration -> rm config.h -> sudo make clean install

~/.xinitrc :
def starx: It simplifies the process of launching the X server and client applications by automatically reading configuration files, primarily ~/.xinitrc for the client (e.g., window manager or desktop environment) and ~/.xserverrc for the server.  While modern distributions often use display managers like GDM or LightDM for graphical login, startx remains essential for minimal installations, troubleshooting, or environments without a display manager.

[blessed@archlinux ~]$ cat .xinitrc
dunst &
slstatus &
exec dwm

in tty, use "startx" to start the dwm

for looped execution of startx, use ~/.bash_profile
[blessed@archlinux ~]$ cat .bash_profile
------------------------------------------
#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY && $(tty) == /dev/tty1 ]]; then
  exec startx
fi
--------------------------------------------
// here the lines represent the block only, dont copy


