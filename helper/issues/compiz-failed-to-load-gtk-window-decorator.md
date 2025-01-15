

# Issue

* [Compiz failed to load gtk-window-decorator](#compiz-failed-to-load-gtk-window-decorator)




## Compiz failed to load gtk-window-decorator

> When boot iso, using Window Manager: [Compiz](../../asset/overlay/usr/share/glib-2.0/schemas/50_mate-layout-main.gschema.override#L21)

> failed to load gtk-window-decorator.

> but using [mate-tweak](https://github.com/ubuntu-mate/mate-tweak/blob/master/mate-tweak#L372) to select Window Manager, it worked to load gtk-window-decorator.

> `less ~/.xsession-errors`

> [~/.config/compiz/compizconfig/Default.ini](../../asset/overlay/etc/skel/.config/compiz/compizconfig/Default.ini#L15-L16)

``` ini
[decor]
as_command = exec /usr/bin/compiz-decorator
```







## Version

run

``` sh
compiz --version
```

show

```
compiz 0.8.18
```



run

``` sh
mate-session --version
```

show

```
mate-session 1.26.0
```



## Change Window Manager

Change window manager to `marco`

``` sh
gsettings set org.mate.session.required-components windowmanager 'marco'
```

Change window manager to `compiz`

``` sh
gsettings set org.mate.session.required-components windowmanager 'compiz'
```





## mate-session

get

``` sh
gsettings get org.mate.session session-start
```

set

``` sh
gsettings set org.mate.session session-start 1736911048
```





## Explore

run

``` sh
compiz-decorator
```

show

```
(gtk-window-decorator:3707): Wnck-CRITICAL **: 04:40:45.540: wnck_set_client_type: changing the client type is not supported.
```


run

``` sh
gtk-window-decorator
```

show

``` sh
(gtk-window-decorator:3878): Wnck-CRITICAL **: 04:42:38.615: wnck_set_client_type: changing the client type is not supported.
```


run

``` sh
dpkg -S gtk-window-decorator
```

show

```
compiz-gnome: /usr/share/man/man1/gtk-window-decorator.1.gz
compiz-gnome: /usr/bin/gtk-window-decorator
```


run

``` sh
dpkg -S compiz-decorator
```

show

```
compiz-core: /usr/bin/compiz-decorator
```

run

```
file /usr/bin/compiz-decorator
```

show

```
/usr/bin/compiz-decorator: POSIX shell script, ASCII text executable
```

run to view [/usr/bin/compiz-decorator](../sample/overlay/usr/bin/compiz-decorator)

``` sh
less /usr/bin/compiz-decorator
```


## Debian Package

* [compiz-core](https://packages.debian.org/stable/compiz-core)
* [compiz-gnome](https://packages.debian.org/stable/compiz-gnome)
* [mate-tweak](https://packages.debian.org/stable/mate-tweak)




## Search

Search Keyword: [wnck_set_client_type: changing the client type is not supported.`](https://www.google.com/search?q=wnck_set_client_type%3A+changing+the+client+type+is+not+supported.)


* [https://bbs.archlinux.org/viewtopic.php?id=78558](https://bbs.archlinux.org/viewtopic.php?id=78558)
* [https://bbs.archlinux.org/viewtopic.php?id=78558#p655237](https://bbs.archlinux.org/viewtopic.php?id=78558#p655237)
* [https://bbs.archlinux.org/viewtopic.php?pid=655237#p655237](https://bbs.archlinux.org/viewtopic.php?pid=655237#p655237)


```
For some reason compiz does not register with the session-manager if you don't explicitly pass is the session id.

To solve that, use a wrapper, or in /usr/share/applications/compiz.desktop change the exec line to

Exec=bash -c 'compiz ccp decoration --sm-client-id $DESKTOP_AUTOSTART_ID'

```


## Howto

> Orginal: /usr/share/applications/compiz.desktop

``` ini
Exec=compiz ccp
```


> Fix: /usr/share/applications/compiz.desktop

``` ini
Exec=sh -c 'compiz ccp decoration --sm-client-id $DESKTOP_AUTOSTART_ID'
```
