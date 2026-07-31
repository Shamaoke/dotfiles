
To enable Picom autostart in Openbox via the XDG Autostart system place the
`picom.desktop` file into the `~/.config/autostart` directory. To activate
the program's autostart, the `.desktop` file must contain the line `Hidden=false`
or not contain this line at all. In the case of `Hidden=true`, the program will
not be autostarted.

Openbox implements program launching via the XDG Autostart mechanism using
the `/usr/lib/openbox/openbox-xdg-autostart` script. For the mechanism to work,
this script must be explicitly launched by adding it to the `~/.config/openbox/autostart`
file. However, when launching Openbox using the `openbox-session` command, this
is not required because the execution of the aforementiond command happens automatically.

Imporant note: for the `/usr/lib/openbox/openbox-xdg-autostart` script to work
the `python-pyxdg` package must be installed on the system.

