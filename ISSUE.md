

# Issue

* [Mate Panel Failed to load applet](#mate-panel-failed-to-load-applet)




## Mate Panel Failed to load applet

> If [icon-theme set to Papirus-Dark](asset/overlay/usr/share/glib-2.0/schemas/50_mate-theme-main.gschema.override#L9), when login, Mate Panel Failed to load applet


> But if logined, reload mate-panel it worked. then relogin, it occur again.


run

``` sh
cat ~/.xsession-errors
```

show

```

** (mate-panel:1750): WARNING **: 07:44:35.167: Failed to load applet BriskMenuFactory::BriskMenu:
Timeout was reached

** (mate-panel:1750): WARNING **: 07:44:36.023: Failed to load applet NotificationAreaAppletFactory::NotificationArea:
Timeout was reached

** (mate-panel:1750): WARNING **: 07:44:36.391: Failed to load applet ClockAppletFactory::ClockApplet:
Timeout was reached

** (mate-panel:1750): WARNING **: 07:44:36.540: Failed to load applet WnckletFactory::ShowDesktopApplet:
Timeout was reached

** (mate-panel:1750): WARNING **: 07:44:36.728: Failed to load applet WnckletFactory::WindowListApplet:
Timeout was reached

** (mate-panel:1750): WARNING **: 07:44:36.873: Failed to load applet WnckletFactory::WorkspaceSwitcherApplet:
Timeout was reached
Failed to register: Timeout was reached

```






> Refer Case: [eznixos-adjustment-mate](https://github.com/samwhelp/eznixos-adjustment-iso-profile-start/tree/main/debian-12/locale/en_us/eznixos-adjustment-mate) is work, so i don't know why.
