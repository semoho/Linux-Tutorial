# Commands

<div dir="rtl" markdown="1">
دستورات درون ترمینال در جلسه قبلی :  
<div dir="ltr" markdown="1">

- ps
- ps -ax
- ps -axu
- kill
- systemctl
- pstree 
- top
- free
- ll 
- alias
- chmod
- chown
- chgrp


## ps: 
<div dir="rtl" markdown="1">
پروسس های فعال سیستم را نمایش میدهد
<div dir="ltr" markdown="1">

```linux
--- ps ---
>ps
PID TTY          TIME CMD
8116 pts/0    00:00:00 bash
8146 pts/0    00:00:00 ps
```

## ps -ax: 
<div dir="rtl" markdown="1">
پروسس های فعال در سیستم را با جزئیات بیشتری نمایش میدهد
<div dir="ltr" markdown="1">

```linux
--- ps -ax ---
>ps -ax
  PID TTY      STAT   TIME COMMAND
    1 ?        Ss     0:02 /usr/lib/systemd/systemd --switched-root --system --deserialize 17
    2 ?        S      0:00 [kthreadd]
    3 ?        I<     0:00 [rcu_gp]
    4 ?        I<     0:00 [rcu_par_gp]
    5 ?        I      0:00 [kworker/0:0-cgroup_pidlist_destroy]
    6 ?        I<     0:00 [kworker/0:0H-kblockd]
    8 ?        I<     0:00 [mm_percpu_wq]
    9 ?        S      0:00 [ksoftirqd/0]
 7792 tty2     Sl+    0:00 /usr/libexec/gsd-mouse
 7829 tty2     Sl+    0:00 /usr/libexec/gsd-printer
 7847 tty2     SNl+   0:00 /usr/libexec/tracker-miner-apps
 7854 tty2     SNl+   0:00 /usr/libexec/tracker-miner-fs
 7861 ?        Ssl    0:00 /usr/libexec/evolution-addressbook-factory
 7862 ?        Sl     0:00 /usr/libexec/dconf-service
 7870 tty2     Sl+    0:01 /usr/bin/gnome-software --gapplication-service
 7880 ?        Ssl    0:00 /usr/libexec/tracker-store
 7886 tty2     Sl+    0:00 /usr/libexec/gsd-disk-utility-notify
 7904 ?        S      0:00 /usr/bin/VBoxClient --clipboard
 7910 ?        Sl     0:00 /usr/bin/VBoxClient --clipboard
 7920 ?        Sl     0:00 /usr/libexec/evolution-addressbook-factory-subprocess --factory all --bus-name org.gnome.evolution.dataserver.Subprocess.Backend.AddressBookx7861x2 --own-path /org/gnome/evolution/data
 7927 ?        S      0:00 /usr/bin/VBoxClient --display
 7931 ?        S      0:00 /usr/bin/VBoxClient --display
 7942 ?        S      0:00 /usr/bin/VBoxClient --seamless
 7945 tty2     Sl     0:00 /usr/libexec/ibus-engine-simple
 7948 ?        Sl     0:00 /usr/bin/VBoxClient --seamless
 7960 ?        S      0:00 /usr/bin/VBoxClient --draganddrop
 7963 ?        Sl     0:00 /usr/bin/VBoxClient --draganddrop
 8053 ?        Ssl    0:00 /usr/libexec/fwupd/fwupd
 8106 ?        Ssl    0:00 /usr/libexec/gnome-terminal-server
 8116 pts/0    Ss     0:00 bash
 8154 pts/0    T      0:00 man ps
 8169 pts/0    T      0:00 less
 8204 ?        S      0:00 sleep 60
 8205 pts/0    T      0:00 man ps
 8217 pts/0    T      0:00 less
 8231 pts/0    R+     0:00 ps -ax
```

## ps -axu: 
<div dir="rtl" markdown="1">
پروسس های موجود در سیستم را همراه با نمایش میزان استفاده هر یک از پروسس ها از رم و سی پی یو نمایش میدهد
<div dir="ltr" markdown="1">

```linux
--- ps -axu ---
>ps -aux
USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root         1  0.5  0.1 179104 13892 ?        Ss   00:24   0:02 /usr/lib/systemd/systemd --switched-root --system --deserialize 17
root         2  0.0  0.0      0     0 ?        S    00:24   0:00 [kthreadd]
root         3  0.0  0.0      0     0 ?        I<   00:24   0:00 [rcu_gp]
root         4  0.0  0.0      0     0 ?        I<   00:24   0:00 [rcu_par_gp]
root         5  0.0  0.0      0     0 ?        I    00:24   0:00 [kworker/0:0-cgroup_pidlist_destroy]
root         6  0.0  0.0      0     0 ?        I<   00:24   0:00 [kworker/0:0H-kblockd]
root         8  0.0  0.0      0     0 ?        I<   00:24   0:00 [mm_percpu_wq]
root         9  0.0  0.0      0     0 ?        S    00:24   0:00 [ksoftirqd/0]
root        10  0.0  0.0      0     0 ?        R    00:24   0:00 [rcu_sched]
root        11  0.0  0.0      0     0 ?        S    00:24   0:00 [migration/0]
root        12  0.0  0.0      0     0 ?        S    00:24   0:00 [watchdog/0]
root        13  0.0  0.0      0     0 ?        S    00:24   0:00 [cpuhp/0]
root        15  0.0  0.0      0     0 ?        S    00:24   0:00 [kdevtmpfs]
root        16  0.0  0.0      0     0 ?        I<   00:24   0:00 [netns]
samadip+  7927  0.0  0.0  45680   292 ?        S    00:28   0:00 /usr/bin/VBoxClient --display
samadip+  7931  0.0  0.0  45816  2588 ?        S    00:28   0:00 /usr/bin/VBoxClient --display
samadip+  7942  0.0  0.0  45680   292 ?        S    00:28   0:00 /usr/bin/VBoxClient --seamless
samadip+  7945  0.0  0.0 206588  6852 tty2     Sl   00:28   0:00 /usr/libexec/ibus-engine-simple
samadip+  7948  0.0  0.0 111864  2248 ?        Sl   00:28   0:00 /usr/bin/VBoxClient --seamless
samadip+  7960  0.0  0.0  45680   292 ?        S    00:28   0:00 /usr/bin/VBoxClient --draganddrop
samadip+  7963  0.0  0.0 112380  2348 ?        Sl   00:28   0:00 /usr/bin/VBoxClient --draganddrop
root      8053  0.0  0.3 540448 26796 ?        Ssl  00:28   0:00 /usr/libexec/fwupd/fwupd
samadip+  8106  1.0  0.5 535464 46500 ?        Rsl  00:28   0:01 /usr/libexec/gnome-terminal-server
samadip+  8116  0.0  0.0  24280  4916 pts/0    Ss   00:28   0:00 bash
samadip+  8154  0.0  0.0  18736  3440 pts/0    T    00:28   0:00 man ps
samadip+  8169  0.0  0.0   9676  2080 pts/0    T    00:28   0:00 less
samadip+  8205  0.0  0.0  18736  3304 pts/0    T    00:29   0:00 man ps
samadip+  8217  0.0  0.0   9676  2056 pts/0    T    00:29   0:00 less
root      8251  0.0  0.0   7284   836 ?        S    00:30   0:00 sleep 60
samadip+  8254  0.0  0.0  57172  3864 pts/0    R+   00:31   0:00 ps -axu
```

## kill: 
<div dir="rtl" markdown="1">
از این دستور برای بستن یک پروسس استفاده میشود
<div dir="ltr" markdown="1">

```linux
--- kill <pid|name> ---
>kill 8169
```

## systemctl: 
<div dir="rtl" markdown="1">
وضعیت فعلی پروسس را نمایش میدهد
<div dir="ltr" markdown="1">

```linux
--- systemctl status <name>.service ---
>systemctl status sshd.service
```


## pstree: 
<div dir="rtl" markdown="1">
پروسس های فعال در سیستم عامل را همراه با پرنت به صورت منظم نمایش میدهد
<div dir="ltr" markdown="1">

```linux
--- pstree ---
>pstree
systemd─┬─ModemManager───2*[{ModemManager}]
        ├─NetworkManager───2*[{NetworkManager}]
        ├─2*[VBoxClient───VBoxClient]
        ├─2*[VBoxClient───VBoxClient───{VBoxClient}]
        ├─VBoxClient───VBoxClient───2*[{VBoxClient}]
        ├─VBoxService───7*[{VBoxService}]
        ├─accounts-daemon───2*[{accounts-daemon}]
        ├─acpid
        ├─anacron
        ├─apache2───5*[apache2]
        ├─avahi-daemon───avahi-daemon
        ├─boltd───2*[{boltd}]
        ├─colord───2*[{colord}]
        ├─cron
        ├─cups-browsed───2*[{cups-browsed}]
        ├─cupsd───dbus
        ├─dbus-daemon
        ├─fwupd───4*[{fwupd}]
        ├─gdm3─┬─gdm-session-wor─┬─gdm-x-session─┬─Xorg───{Xorg}
        │      │                 │               ├─gnome-session-b─┬─ssh-agent
        │      │                 │               │                 └─2*[{gnome-session-b}]
        │      │                 │               └─2*[{gdm-x-session}]
        │      │                 └─2*[{gdm-session-wor}]
        │      └─2*[{gdm3}]
        ├─gnome-keyring-d───3*[{gnome-keyring-d}]
        ├─irqbalance───{irqbalance}
        ├─2*[kerneloops]
        ├─mysqld───29*[{mysqld}]
        ├─networkd-dispat
        ├─ntpd───{ntpd}
        ├─packagekitd───2*[{packagekitd}]
        ├─php-fpm7.3───2*[php-fpm7.3]
        ├─polkitd───2*[{polkitd}]
        ├─rsyslogd───3*[{rsyslogd}]
        ├─rtkit-daemon───2*[{rtkit-daemon}]
        ├─snapd───24*[{snapd}]
        ├─systemd─┬─(sd-pam)
        │         ├─at-spi-bus-laun─┬─dbus-daemon
        │         │                 └─3*[{at-spi-bus-laun}]
        │         ├─at-spi2-registr───2*[{at-spi2-registr}]
        │         ├─dbus-daemon
        │         ├─dconf-service───2*[{dconf-service}]
        │         ├─evolution-addre───5*[{evolution-addre}]
        │         ├─evolution-calen───8*[{evolution-calen}]
        │         ├─evolution-sourc───3*[{evolution-sourc}]
        │         ├─gnome-calendar───5*[{gnome-calendar}]
        │         ├─gnome-session-b─┬─evolution-alarm───5*[{evolution-alarm}]
        │         │                 ├─gsd-disk-utilit───2*[{gsd-disk-utilit}]
        │         │                 ├─tracker-miner-f───4*[{tracker-miner-f}]
        │         │                 ├─update-notifier───3*[{update-notifier}]
        │         │                 └─3*[{gnome-session-b}]
        │         ├─gnome-session-c───{gnome-session-c}
        │         ├─gnome-shell─┬─ibus-daemon─┬─ibus-engine-sim───2*[{ibus-engine-sim}]
        │         │             │             ├─ibus-extension-───3*[{ibus-extension-}]
        │         │             │             ├─ibus-memconf───2*[{ibus-memconf}]
        │         │             │             └─2*[{ibus-daemon}]
        │         │             └─8*[{gnome-shell}]
        │         ├─gnome-shell-cal───5*[{gnome-shell-cal}]
        │         ├─gnome-software───3*[{gnome-software}]
        │         ├─gnome-terminal-─┬─bash───pstree
        │         │                 └─4*[{gnome-terminal-}]
        │         ├─goa-daemon───3*[{goa-daemon}]
        │         ├─goa-identity-se───2*[{goa-identity-se}]
        │         ├─gsd-a11y-settin───3*[{gsd-a11y-settin}]
        │         ├─gsd-color───3*[{gsd-color}]
        │         ├─gsd-datetime───3*[{gsd-datetime}]
        │         ├─gsd-housekeepin───3*[{gsd-housekeepin}]
        │         ├─gsd-keyboard───3*[{gsd-keyboard}]
        │         ├─gsd-media-keys───3*[{gsd-media-keys}]
        │         ├─gsd-power───3*[{gsd-power}]
        │         ├─gsd-print-notif───2*[{gsd-print-notif}]
        │         ├─gsd-printer───2*[{gsd-printer}]
        │         ├─gsd-rfkill───2*[{gsd-rfkill}]
        │         ├─gsd-screensaver───2*[{gsd-screensaver}]
        │         ├─gsd-sharing───3*[{gsd-sharing}]
        │         ├─gsd-smartcard───4*[{gsd-smartcard}]
        │         ├─gsd-sound───3*[{gsd-sound}]
        │         ├─gsd-wacom───2*[{gsd-wacom}]
        │         ├─gsd-wwan───3*[{gsd-wwan}]
        │         ├─gsd-xsettings───3*[{gsd-xsettings}]
        │         ├─gvfs-afc-volume───3*[{gvfs-afc-volume}]
        │         ├─gvfs-goa-volume───2*[{gvfs-goa-volume}]
        │         ├─gvfs-gphoto2-vo───2*[{gvfs-gphoto2-vo}]
        │         ├─gvfs-mtp-volume───2*[{gvfs-mtp-volume}]
        │         ├─gvfs-udisks2-vo───3*[{gvfs-udisks2-vo}]
        │         ├─gvfsd─┬─gvfsd-trash───2*[{gvfsd-trash}]
        │         │       └─2*[{gvfsd}]
        │         ├─gvfsd-fuse───5*[{gvfsd-fuse}]
        │         ├─ibus-portal───2*[{ibus-portal}]
        │         ├─ibus-x11───2*[{ibus-x11}]
        │         ├─pulseaudio───3*[{pulseaudio}]
        │         ├─seahorse───3*[{seahorse}]
        │         ├─xdg-desktop-por───4*[{xdg-desktop-por}]
        │         ├─xdg-desktop-por───3*[{xdg-desktop-por}]
        │         ├─xdg-document-po───5*[{xdg-document-po}]
        │         └─xdg-permission-───2*[{xdg-permission-}]
        ├─systemd-journal
        ├─systemd-logind
        ├─systemd-resolve
        ├─systemd-udevd───9*[systemd-udevd]
        ├─udisksd───4*[{udisksd}]
        ├─unattended-upgr───{unattended-upgr}
        ├─upowerd───2*[{upowerd}]
        ├─whoopsie───2*[{whoopsie}]
        └─wpa_supplicant
```

## top: 
<div dir="rtl" markdown="1">
این دستور مانند task manager ویندوز عمل میکند
<div dir="ltr" markdown="1">

```linux
--- top ---
>top
top - 00:43:46 up 19 min,  1 user,  load average: 0.57, 0.36, 0.31
Tasks: 227 total,   1 running, 218 sleeping,   8 stopped,   0 zombie
%Cpu(s): 20.5 us,  1.4 sy,  0.0 ni, 77.1 id,  0.0 wa,  1.0 hi,  0.0 si,  0.0 st
MiB Mem :   7893.1 total,   6123.1 free,   1019.3 used,    750.6 buff/cache
MiB Swap:   3192.0 total,   3192.0 free,      0.0 used.   6610.2 avail Mem 

  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND                                                                                                                                       
 7567 samadip+  20   0 2956964 279588 107652 S  21.6   3.5   1:27.77 gnome-shell                                                                                                                                   
 8106 samadip+  20   0  536900  47336  35540 S   1.3   0.6   0:07.09 gnome-terminal-                                                                                                                               
    1 root      20   0  179104  13896   9076 S   0.0   0.2   0:02.15 systemd                                                                                                                                       
    2 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kthreadd                                                                                                                                      
    3 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_gp                                                                                                                                        
    4 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 rcu_par_gp                                                                                                                                    
    6 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 kworker/0:0H-kblockd                                                                                                                          
    8 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 mm_percpu_wq                                                                                                                                  
    9 root      20   0       0      0      0 S   0.0   0.0   0:00.05 ksoftirqd/0                                                                                                                                   
   10 root      20   0       0      0      0 I   0.0   0.0   0:00.21 rcu_sched                                                                                                                                     
   11 root      rt   0       0      0      0 S   0.0   0.0   0:00.00 migration/0                                                                                                                                   
   12 root      rt   0       0      0      0 S   0.0   0.0   0:00.00 watchdog/0                                                                                                                                    
   13 root      20   0       0      0      0 S   0.0   0.0   0:00.00 cpuhp/0                                                                                                                                       
   15 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kdevtmpfs                                                                                                                                     
   16 root       0 -20       0      0      0 I   0.0   0.0   0:00.00 netns                                                                                                                                         
   17 root      20   0       0      0      0 S   0.0   0.0   0:00.00 kauditd           
```


## free: 
<div dir="rtl" markdown="1">
این دستور وضعیت مموری سیستم را نمایش میدهد   سوییچ h- باعث قابل خواندن شدن مقادیر میشود. همچنین swap قسمتی از حافظه دستگاه است که سیستم عامل در مواقع ضروری به عنوان مموری استفاده میکند

<div dir="ltr" markdown="1">

```linux
--- free [options] ---
> free -h
free -h
              total        used        free      shared  buff/cache   available
Mem:          7.7Gi       1.0Gi       6.0Gi        19Mi       750Mi       6.5Gi
Swap:         3.1Gi          0B       3.1Gi

```


## ll: 
<div dir="rtl" markdown="1">
این دستور همان دستور ls -l است که فایل های موجود در دایرکتوری را همراه با اطلاعات اضافی نمایش میدهد
<div dir="ltr" markdown="1">

```linux
--- ll ---
>ll
total 24
lrwxrwxrwx.   1 root root    7 May 11  2019 bin -> usr/bin
dr-xr-xr-x.   6 root root 4096 Oct 15 16:18 boot
drwxr-xr-x.  20 root root 3200 Nov 12 00:24 dev
drwxr-xr-x. 134 root root 8192 Oct 15 17:17 etc
drwxr-xr-x.   3 root root   24 Oct 15 16:18 home
lrwxrwxrwx.   1 root root    7 May 11  2019 lib -> usr/lib
lrwxrwxrwx.   1 root root    9 May 11  2019 lib64 -> usr/lib64
drwxr-xr-x.   3 root root   39 Oct 15 16:42 media
drwxr-xr-x.   2 root root    6 May 11  2019 mnt
drwxr-xr-x.   3 root root   39 Oct 15 16:54 opt
dr-xr-xr-x. 241 root root    0 Nov 12 00:24 proc
dr-xr-x---.   5 root root  271 Oct 22 17:23 root
drwxr-xr-x.  40 root root 1220 Nov 12 00:25 run
lrwxrwxrwx.   1 root root    8 May 11  2019 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6 May 11  2019 srv
dr-xr-xr-x.  13 root root    0 Nov 12 00:24 sys
drwxrwxrwt.  12 root root 4096 Nov 12 00:35 tmp
drwxr-xr-x.  12 root root  144 Oct 15 09:01 usr
drwxr-xr-x.  21 root root 4096 Oct 15 16:17 var
```


## alias: 
<div dir="rtl" markdown="1">
از این دستور برای تعریف اسم مستعار برای دستورات استفاده میشود
<div dir="ltr" markdown="1">

```linux
--- alias [name[=value] ...] ---
>alias
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias vi='vim'
alias which='(alias; declare -f) | /usr/bin/which --tty-only --read-alias --read-functions --show-tilde --show-dot'
alias xzegrep='xzegrep --color=auto'
alias xzfgrep='xzfgrep --color=auto'
alias xzgrep='xzgrep --color=auto'
alias zegrep='zegrep --color=auto'
alias zfgrep='zfgrep --color=auto'
alias zgrep='zgrep --color=auto'

>alias killit='kill mysql'
```

## chmod: 
<div dir="rtl" markdown="1">
با استفاده از این دستور میتوان سطح دسترسی فایل را تغییر داد
<div dir="ltr" markdown="1">

```linux
--- chmod <mode> <file> ---

drwxrwxrwx.  13 root root 4096 Nov 12 01:06 tmp

>sudo chmod 776 tmp

drwxrwxrw-.  13 root root 4096 Nov 12 01:06 tmp
```



## chown: 
<div dir="rtl" markdown="1">
با استفاده از این دستور میتوان مالک فایل را تغییر داد برای این کار باید سطح دسترسی بیشتر از مالک داشت
<div dir="ltr" markdown="1">

```linux
--- chown [owner]:[group] <file> ---
>
```

## chgrp: 
<div dir="rtl" markdown="1">
با استفاده از این دستور میتوان گروه فایل را عوض کرد
<div dir="ltr" markdown="1">

```linux
--- chgrp <group> <file> ---
>
```

## selinux: 
<div dir="rtl" markdown="1">
«لینوکس با بهبودهای امنیتی» (Security Enhanced Linux) سازوکار کنترل دسترسی پیشرفته‌ای است که در اغلب توزیع‌های مدرن لینوکس تعبیه شده است. این ساز و کار در ابتدا از سوی سازمان امنیت ملی ایالات‌متحده برای حفاظت از سیستم‌های رایانه‌ای در برابر نفوذ بدافزارها و دستکاری داده‌ها طراحی شد.
<div dir="ltr" markdown="1">