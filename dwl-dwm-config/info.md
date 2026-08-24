# Previous compositor used: DWL (Wayland)

# Side tools: slstatus, mako

# dwl-session, dwl, slstatus dir:/usr/local/bin/
- ls /bin
dwl dwl-session slstatus
- dwl.desktop is a session file which is responsible for gui
- cat dwl.desktop
[Desktop Entry]
Name=dwl
Comment=dwm for Wayland
Exec=dwl-session
Type=Application

- dwl-session is executable (sh script) for executing tools in order
- cat dwl-session
#!/bin/sh
mako &
~/.local/bin/battery-notify/battery-notify &
exec sh -c 'slstatus -s | dwl'

- mako is used for notifications
