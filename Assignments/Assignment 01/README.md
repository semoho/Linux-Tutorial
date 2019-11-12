# FHS   

<div dir="rtl" markdown="1">

. -----> دایرکتوری اصلی تمام سیستم   
┤── bin -----> باینری های مورد نیاز که باید برای تمام یوزر ها موجود باشد  
┤── boot -----> فایل های مورد نیاز بوت شدن سیستم مانند Grub و غیره   
│      ┘── grub  
┤── cdrom -----> این دایرکتوری جزو استانداردهای اصلی سیستم عامل لینوکس نیست ولی هنوز در بعضی نسخه ها مانند اوبونتو از ان استفاده میشود که شامل سی دی رام های متصل به سیستم است  
┤── dev -----> لینکوس دستگاه ها را به عنوان فایل در معرض نمایش قرار میدهد و دایرکتوری مذکور شامل تعدادی پرونده خاص است که انها را نمایان میکند  
│      ┤── block  
│      ┤── bsg  
│      ┤── bus  
│      ┤── char  
│      ┤── disk  
│      ┤── dri  
│      ┤── fd   
│      ┤── hugepages  
│      ┤── input  
│      ┤── lightnvm  
│      ┤── mapper  
│      ┤── mqueue  
│      ┤── net  
│      ┤── pts  
│      ┤── shm  
│      ┤── snd  
│      ┘── vfio  
┤── etc -----> شامل پرونده های پیکربندی سیستم عامل و پرونده های پیکربندی هر کاربر خاص است  
│      ┤── acpi  
│      ┤── alternatives  
│      ┤── apache2  
│      ┤── apm  
│      ┤── apparmor  
│      ┤── apparmor.d  
│      ┤── apport  
│      ┤── apt  
│      ┤── avahi  
│      ┤── bash_completion.d  
│      ┤── binfmt.d  
│      ┤── bluetooth  
│      ┤── brltty  
│      ┤── ca-certificates  
│      ┤── calendar  
│      ┤── chatscripts  
│      ┤── console-setup  
│      ┤── cracklib  
│      ┤── cron.d  
│      ┤── cron.daily  
│      ┤── cron.hourly  
│      ┤── cron.monthly  
│      ┤── cron.weekly  
│      ┤── cups  
│      ┤── cupshelpers  
│      ┤── dbconfig-common  
│      ┤── dbus-1  
│      ┤── dconf  
│      ┤── default  
│      ┤── depmod.d  
│      ┤── dhcp  
│      ┤── dictionaries-common  
│      ┤── dpkg  
│      ┤── emacs  
│      ┤── firefox  
│      ┤── fonts  
│      ┤── fwupd  
│      ┤── gdb  
│      ┤── gdm3  
│      ┤── geoclue  
│      ┤── ghostscript  
│      ┤── glvnd  
│      ┤── gnome  
│      ┤── groff  
│      ┤── grub.d  
│      ┤── gss  
│      ┤── gtk-2.0  
│      ┤── gtk-3.0  
│      ┤── hp  
│      ┤── ifplugd  
│      ┤── ImageMagick-6  
│      ┤── init  
│      ┤── init.d  
│      ┤── initramfs-tools  
│      ┤── insserv.conf.d  
│      ┤── iproute2  
│      ┤── java-8-openjdk  
│      ┤── kernel  
│      ┤── ldap  
│      ┤── ld.so.conf.d  
│      ┤── libblockdev  
│      ┤── libnl-3  
│      ┤── libpaper.d  
│      ┤── libreoffice  
│      ┤── lighttpd  
│      ┤── logcheck  
│      ┤── logrotate.d  
│      ┤── modprobe.d  
│      ┤── modules-load.d  
│      ┤── mysql  
│      ┤── netplan  
│      ┤── network  
│      ┤── networkd-dispatcher  
│      ┤── NetworkManager  
│      ┤── newt  
│      ┤── opt -----> پرونده های پیکربندی اضافی که توسط نرم افزارها در این دایرکتوری ذخیره میشود  
│      ┤── PackageKit  
│      ┤── pam.d  
│      ┤── pcmcia  
│      ┤── perl  
│      ┤── php  
│      ┤── phpmyadmin  
│      ┤── pki  
│      ┤── pm  
│      ┤── polkit-1  
│      ┤── ppp  
│      ┤── profile.d  
│      ┤── pulse  
│      ┤── python  
│      ┤── python2.7  
│      ┤── python3  
│      ┤── python3.6  
│      ┤── rc0.d  
│      ┤── rc1.d  
│      ┤── rc2.d  
│      ┤── rc3.d  
│      ┤── rc4.d  
│      ┤── rc5.d  
│      ┤── rc6.d  
│      ┤── rcS.d  
│      ┤── resolvconf  
│      ┤── rsyslog.d  
│      ┤── sane.d  
│      ┤── security  
│      ┤── selinux  
│      ┤── sensors.d  
│      ┤── sgml   
│      ┤── skel  
│      ┤── speech-dispatcher  
│      ┤── ssh  
│      ┤── ssl  
│      ┤── sudoers.d  
│      ┤── sysctl.d  
│      ┤── systemd  
│      ┤── terminfo  
│      ┤── texmf  
│      ┤── thermald  
│      ┤── thunderbird  
│      ┤── tmpfiles.d  
│      ┤── udev  
│      ┤── udisks2  
│      ┤── ufw  
│      ┤── update-manager  
│      ┤── update-motd.d  
│      ┤── update-notifier  
│      ┤── UPower  
│      ┤── usb_modeswitch.d  
│      ┤── vim  
│      ┤── wpa_supplicant  
│      ┤── X11   
│      ┤── xdg  
│      ┤── xml -----> را پردازش میکند XML پرونده های پیکربندی ، مانند کاتالوگ ، برای نرم افزاری که  
│      ┘── yum  
┤── home -----> دایرکتوری های خانگی کاربران ، حاوی پرونده های ذخیره شده ، تنظیمات شخصی و غیره  
│      ┘── amir  
┤── lib -----> شامل کتابخانه هایی است که به فایل های باینری  ضروری در پوشه /bin و /sbin نیاز دارند   
│      ┤── apparmor  
│      ┤── brltty  
│      ┤── console-setup  
│      ┤── crda  
│      ┤── firmware  
│      ┤── hdparm  
│      ┤── ifupdown  
│      ┤── init  
│      ┤── linux-sound-base  
│      ┤── lsb  
│      ┤── modprobe.d  
│      ┤── modules  
│      ┤── netplan  
│      ┤── recovery-mode  
│      ┤── systemd  
│      ┤── terminfo  
│      ┤── udev  
│      ┤── ufw  
│      ┘── x86_64-linux-gnu  
┤── lib64 -----> کتابخانه های ضروری با قالب جایگزین. چنین دایرکتوری ها اختیاری هستند ، اما در صورت وجود ، برخی از الزامات را دارند  
┤── lost+found  
┤── media -----> رسانه های جداشدنی مثل سی دی رام در این دایرکتوری نمایش داده میشود  
│      ┤── amir  
│      ┤── sf_C_DRIVE  
│      ┘── sf_D_DRIVE  
┤── mnt -----> میتوان در این پوشه فایل هایی را به صورت موقت نگه داری کرد  
┤── opt -----> قسمت های اختیاری پکیج های نرم افزارها در این دایرکتوری نگه داری میشود  
│      ┘── VBoxGuestAdditions  
┤── proc -----> این شامل پرونده های ویژه ای است که اطلاعات سیستم و پردازش را نشان می دهد  
│      ┤── acpi  
│      ┤── asound  
│      ┤── bus  
│      ┤── driver   
│      ┤── fs  
│      ┤── irq  
│      ┤── net -> self/net  
│      ┤── pressure  
│      ┤── scsi  
│      ┤── self -> 3037  
│      ┤── sys  
│      ┤── sysvipc  
│      ┤── thread-self  
│      ┘── tty  
┤── root -----> پوشه هوم کاربر اصلی سیستم است  
┤── run -----> این دایرکتوری نسبتا جدید است و به یک برنامه اجازه میدهد تا فایل های زودگذر مورد نیاز خود را در این پوشه نگه داری کند مثل سوکت ها. این فایل ها نمی توانند در دایرکتوری tmp ذخیره شوند زیرا ممکن است حذف شوند  
│      ┤── apache2  
│      ┤── avahi-daemon  
│      ┤── boltd  
│      ┤── console-setup  
│      ┤── cups  
│      ┤── dbus  
│      ┤── gdm3  
│      ┤── initramfs  
│      ┤── lock  
│      ┤── log  
│      ┤── mount  
│      ┤── mysqld  
│      ┤── network  
│      ┤── NetworkManager  
│      ┤── plymouth  
│      ┤── pppconfig  
│      ┤── sendsigs.omit.d  
│      ┤── shm -> /dev/shm  
│      ┤── spice-vdagentd  
│      ┤── sudo  
│      ┤── systemd  
│      ┤── thermald  
│      ┤── tmpfiles.d  
│      ┤── udev  
│      ┤── udisks2  
│      ┤── user  
│      ┘── uuidd  
┤── sbin ----->  باینری های اساسی سیستم ، به عنوان مثال  fsck ، init ، route   
┤── snap  
│      ┤── bin  
│      ┤── core  
│      ┤── core18  
│      ┤── gnome-3-28-1804  
│      ┤── gnome-calculator  
│      ┤── gnome-characters  
│      ┤── gnome-logs  
│      ┤── gnome-system-monitor  
│      ┘── gtk-common-themes  
┤── srv -----> اطلاعات مربوط به سیستم های وب مانند وب سرویس ها و FTP   
┤── sys -----> حاوی اطلاعات مربوط به دستگاه ها ، درایورها و برخی از ویژگی های هسته است  
│      ┤── block  
│      ┤── bus  
│      ┤── class  
│      ┤── dev  
│      ┤── devices  
│      ┤── firmware  
│      ┤── fs  
│      ┤── hypervisor  
│      ┤── kernel  
│      ┤── module  
│      ┘── power  
┤── tmp -----> پرونده های موقتی اغلب بین راه اندازی مجدد سیستم حفظ نمی شود  
┤── usr -----> پوشه فقط خواندنی برای برنامه های کاربر  
│      ┤── bin -----> باینری های غیر ضرروی  
│      ┤── games  
│      ┤── include  
│      ┤── lib -----> لایبری های مورد نیاز باینری ها  
│      ┤── libexec -----> لایبری ها با فرمت دیگه - مثلا 32 بیتی برای سیستم 64 بیتی  
│      ┤── local  
│      ┤── sbin -----> فایل های باینری غیر ضرروی  
│      ┤── share -----> داده های مستقل از ساختار   
│      ┘── src -----> سورس کد کرنل  
┘── var -----> فایل های که به طور مداوم محتوای آن تغییر میکند  
        ┤── backups  
        ┤── cache -----> داده های پنهان و غیر ضروری برنامه ها  
        ┤── crash  
        ┤── lib -----> داده های ماندگار که که توسط برنامه های درحال اجرا نگهداری و تغییر داده میشود  
        ┤── local  
        ┤── lock -----> فایل هایی که وضعیت پروسه های در حال اجرا و لاک شده را نشان می دهد  
        ┤── log -----> فایل های log    
        ┤── mail -----> فایل های صندوق پستی  
        ┤── metrics    
        ┤── opt -----> داده های متغیر از بسته هایی که بعدا برای سیستم نصب کردیم   
        ┤── run -> /run -----> داده های متغیر زمان اجرا. این داده ها سیستم را از زمان بوت شدن توصیف میکنند   
        ┤── snap  
        ┤── spool -----> صف برای کار هایی که قرار است انجام شود. مثلا صف نامه های خروجی  
        ┤── tmp -----> فایل های موقتی در اینجا ذخیره می شود. این فایل ها در هر بار ریست پاک می شود  
        ┘── www  
   


     
‌<div dir="ltr" markdown="1">  
   
# Commands

<div dir="rtl" markdown="1">
دستورات درون ترمینال در جلسه قبلی :  
<div dir="ltr" markdown="1">

- ls
- pwd
- man
- info
- mkdir 
- rmdir 
- touch 
- cd 
- rm 
- stat 
- mv 
- cp 
- whoami


## ls: 
<div dir="rtl" markdown="1">
این دستور فایل ها و دایرکتوری ها را بدون هیچ اطلاعاتی مثل حجم و تاریخ و غیره به نمایش می گذارد
<div dir="ltr" markdown="1">

```linux
>ls
Desktop    domjudge   examples.desktop  Pictures  shared        Templates
Documents  Downloads  Music             Public    SomeFile.txt  Videos
```

## ls -l (l: long listing):
<div dir="rtl" markdown="1">
حجم، تاریخ و زمان آخرین ویرایش فایل یا دایرکتوری، نام فایل یا فولدر و مالک فایل و سطح دسترسی فایل را نشان می دهد  


اولین کارکتر آن مربوط به دایرکتوری یا فایل است
سه تا دسترسی اول مربوط به مالک، سه تا دسترسی دوم مربوط به گروه و سه دسترسی آخر مربوط به بقیه است

دو اسم بعد به ترتیب مالکیت فایل و گروهی که به آن دسترسی دارن را نشان می دهد

سپس حجم فایل یا دایرکتوری

در مورد بعد تاریخ و زمان ساخت آن و در نهایت اسم آن
<div dir="ltr" markdown="1">

```
>ls -l
total 3888
drwxr-xr-x 3 amir amir    4096 Aug 29 21:41 Desktop
drwxr-xr-x 2 amir amir    4096 Aug 29 18:39 Documents
drwxr-xr-x 3 root root    4096 Aug 29 20:36 domjudge
drwxr-xr-x 2 amir amir    4096 Aug 29 18:39 Downloads
-rw-r--r-- 1 amir amir    8980 Aug 29 18:29 examples.desktop
drwxr-xr-x 2 amir amir    4096 Aug 29 18:39 Music
drwxr-xr-x 2 amir amir    4096 Aug 29 18:39 Pictures
drwxr-xr-x 2 amir amir    4096 Aug 29 18:39 Public
drwxr-xr-x 2 amir amir    4096 Aug 29 19:16 shared
-rw-r--r-- 1 amir amir 3924066 Oct 15 14:30 SomeFile.txt
drwxr-xr-x 2 amir amir    4096 Aug 29 18:39 Templates
drwxr-xr-x 2 amir amir    4096 Aug 29 18:39 Videos
```

## ls -a(a: all):
<div dir="rtl" markdown="1">
لیست تمام فایل ها شامل فایل های مخفی که با '.' شروع می شوند
<div dir="ltr" markdown="1">

```
>ls -a
.              examples.desktop  .rpmdb
..             .gnupg            shared
.bash_history  .ICEauthority     SomeFile.txt
.bash_logout   .local            .ssh
.bashrc        .mozilla          .sudo_as_admin_successful
.cache         Music             Templates
.config        .mysql_history    .vboxclient-clipboard.pid
Desktop        .pam_environment  .vboxclient-display.pid
Documents      Pictures          .vboxclient-draganddrop.pid
domjudge       .profile          .vboxclient-seamless.pid
Downloads      Public            Videos
```

## ls -alh (a: all, l: long listing, h: human readable):
<div dir="rtl" markdown="1">
لیست تمام فایل ها موجود در دایرکتوری فعلی به صورتی که قابل خوندن باشد و تمام جزئیات آن را نشان دهد. 
<div dir="ltr" markdown="1">

```
>ls -alh
total 3.9M
drwxr-xr-x 19 amir amir 4.0K Oct 22 14:00 .
drwxr-xr-x  3 root root 4.0K Aug 29 18:29 ..
-rw-------  1 amir amir 4.4K Oct 19 19:48 .bash_history
-rw-r--r--  1 amir amir  220 Aug 29 18:29 .bash_logout
-rw-r--r--  1 amir amir 3.7K Aug 29 18:29 .bashrc
drwx------ 17 amir amir 4.0K Oct 22 14:00 .cache
drwx------ 14 amir amir 4.0K Aug 29 20:34 .config
drwxr-xr-x  3 amir amir 4.0K Aug 29 21:41 Desktop
drwxr-xr-x  2 amir amir 4.0K Aug 29 18:39 Documents
drwxr-xr-x  3 root root 4.0K Aug 29 20:36 domjudge
drwxr-xr-x  2 amir amir 4.0K Aug 29 18:39 Downloads
-rw-r--r--  1 amir amir 8.8K Aug 29 18:29 examples.desktop
drwx------  3 amir amir 4.0K Aug 29 18:53 .gnupg
-rw-------  1 amir amir 4.2K Oct 22 14:00 .ICEauthority
drwx------  3 amir amir 4.0K Aug 29 18:39 .local
drwx------  5 amir amir 4.0K Aug 29 18:54 .mozilla
drwxr-xr-x  2 amir amir 4.0K Aug 29 18:39 Music
-rw-------  1 amir amir  178 Aug 29 20:56 .mysql_history
-rw-r--r--  1 amir amir  310 Aug 29 19:18 .pam_environment
drwxr-xr-x  2 amir amir 4.0K Aug 29 18:39 Pictures
-rw-r--r--  1 amir amir  807 Aug 29 18:29 .profile
drwxr-xr-x  2 amir amir 4.0K Aug 29 18:39 Public
drwxr-xr-x  2 amir amir 4.0K Oct 15 14:23 .rpmdb
drwxr-xr-x  2 amir amir 4.0K Aug 29 19:16 shared
-rw-r--r--  1 amir amir 3.8M Oct 15 14:30 SomeFile.txt
drwx------  2 amir amir 4.0K Aug 29 18:53 .ssh
-rw-r--r--  1 amir amir    0 Aug 29 18:58 .sudo_as_admin_successful
drwxr-xr-x  2 amir amir 4.0K Aug 29 18:39 Templates
-rw-r-----  1 amir amir    5 Oct 22 14:00 .vboxclient-clipboard.pid
-rw-r-----  1 amir amir    5 Oct 22 14:00 .vboxclient-display.pid
-rw-r-----  1 amir amir    5 Oct 22 14:00 .vboxclient-draganddrop.pid
-rw-r-----  1 amir amir    5 Oct 22 14:00 .vboxclient-seamless.pid
drwxr-xr-x  2 amir amir 4.0K Aug 29 18:39 Videos
```

## info: 
<div dir="rtl" markdown="1">
اطلاعات جامع درباره دستور
<div dir="ltr" markdown="1">

```
>info ls
```

## pwd:
<div dir="rtl" markdown="1">
این دستور ادرس مکانی که در انجا هستیم را به ما نشان میدهد
<div dir="ltr" markdown="1">

```
>pwd
/home/amir
```

## mkdir:
<div dir="rtl" markdown="1">
درست کردن یک دایرکتوری با این دستور
<div dir="ltr" markdown="1">

```
>mkdir folderName
```

## rmdir:
<div dir="rtl" markdown="1">
پاک کردن یک دایرکتوری 
<div dir="ltr" markdown="1">

```
>rmdir folderName
```

## touch:
<div dir="rtl" markdown="1">
ایجاد یک فایل
<div dir="ltr" markdown="1">

```
>touch fileName
```

## rm:
<div dir="rtl" markdown="1">
پاک کردن فایل
<div dir="ltr" markdown="1">

```
>rm filename
```

## rm -f (f: force):
<div dir="rtl" markdown="1">
پاک کردن فایل بدون سوال (با زور و اجبار)
<div dir="ltr" markdown="1">

```
>rm -f fileName
```

## rm -r (r: recursive): 
<div dir="rtl" markdown="1">
پاک کردن به صورت بازگشتی
<div dir="ltr" markdown="1">

```
>rm -r foldername
```

## mv:
<div dir="rtl" markdown="1">
انتقال فایل، به کمک این دستور میتوان نام فایل ها را نیز تغییر داد
<div dir="ltr" markdown="1">

```
>mv SomeFile.txt destDiractory
```

## cd:
<div dir="rtl" markdown="1">
تغییر مسیر دادن در داخل پوشه ها 
<div dir="ltr" markdown="1">

```
>cd ..
```

## cp:
<div dir="rtl" markdown="1">
کپی کردن فایل و پوشه
<div dir="ltr" markdown="1">

```
>cp SomeFile.txt destDiractory
```

## cp -r (r: recursive):
<div dir="rtl" markdown="1">
کپی کردن پوشه به صورت بازگشتی
<div dir="ltr" markdown="1">

```
>cp -r sourceDiractory destDiractory
```

## stat:
<div dir="rtl" markdown="1">
نمایش اطلاعات کامل فایل یا دایرکتوری
<div dir="ltr" markdown="1">

```
>stat SomeFile.txt
  File: SomeFile.txt
  Size: 3924066   	Blocks: 7672       IO Block: 4096   regular file
Device: 801h/2049d	Inode: 674774      Links: 1
Access: (0644/-rw-r--r--)  Uid: ( 1000/    amir)   Gid: ( 1000/    amir)
Access: 2019-10-15 14:30:53.375583076 +0330
Modify: 2019-10-15 14:30:07.437962585 +0330
Change: 2019-10-15 14:30:07.437962585 +0330
 Birth: -
```

## whoami:
<div dir="rtl" markdown="1">
نمایش یوزر فعلی
<div dir="ltr" markdown="1">

```
>whoami
amir
```