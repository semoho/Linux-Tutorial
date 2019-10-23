# Commands

<div dir="rtl" markdown="1">
خلاصه دستور های جلسه دوم :
<div dir="ltr" markdown="1">

* **ls:**
  * -l
  * -a
  * -h
* **stat**

* ****info****

* ****pwd****

* ****whoami****

* ****cd****

* ****touch****

* **mkdir**

* **rmdir**

* **rm:**
  * -r
  * -f
* **cp:**
  * -r


<div dir="rtl" markdown="1">
  توضیح دستورات به همره مثال :
<div dir="ltr" markdown="1">

## ls

<div dir="rtl" markdown="1">
نمایش لیست فایل ها وپوشه ها در مسیر جاری
و دارای سوییچ های متعدد . من جمله :
<div dir="ltr" markdown="1">

#### ls -l

<div dir="rtl" markdown="1">
نمایش اطلاعات بیشتر از جمله حجم فایل، دسترسی ها، تاریخ و زمان آخرین ویرایش.
<div dir="ltr" markdown="1">


#### ls -h

<div dir="rtl" markdown="1">
نمایش اطلاعت به صورت human readable در قسمت حجم ها.
<div dir="ltr" markdown="1">


#### ls -a

<div dir="rtl" markdown="1">
نمایش فایل و پوشه های مخفی .
<div dir="ltr" markdown="1">

***
<div dir="rtl" markdown="1">
ازسوییچ ها میتوان به صورت ترکیبی نیز استفاده نمود . به مثال زیر توجه شود :‌
<div dir="ltr" markdown="1">

***

```
➜ ls -lah
total 84K
drwxr-xr-x  20 root root 4.0K Oct 21 11:44 .
drwxr-xr-x  20 root root 4.0K Oct 21 11:44 ..
lrwxrwxrwx   1 root root    7 Sep 25 06:46 bin -> usr/bin
drwxr-xr-x   4 root root 4.0K Oct 21 11:44 boot
drwxrwxr-x   2 root root 4.0K Sep 25 06:48 cdrom
drwxr-xr-x  21 root root 4.9K Oct 23 08:40 dev
drwxr-xr-x 136 root root  12K Oct 21 11:44 etc
drwxr-xr-x   3 root root 4.0K Sep 25 06:49 home
lrwxrwxrwx   1 root root   32 Oct 17 09:17 initrd.img -> boot/initrd.img-5.0.0-32-generic
lrwxrwxrwx   1 root root   32 Oct 21 11:44 initrd.img.old -> boot/initrd.img-5.0.0-29-generic
lrwxrwxrwx   1 root root    7 Sep 25 06:46 lib -> usr/lib
lrwxrwxrwx   1 root root    9 Sep 25 06:46 lib32 -> usr/lib32
lrwxrwxrwx   1 root root    9 Sep 25 06:46 lib64 -> usr/lib64
lrwxrwxrwx   1 root root   10 Sep 25 06:46 libx32 -> usr/libx32
drwx------   2 root root  16K Sep 25 06:46 lost+found
drwxr-xr-x   3 root root 4.0K Oct 17 14:50 media
drwxr-xr-x   2 root root 4.0K Apr 16  2019 mnt
drwxr-xr-x   7 root root 4.0K Oct 11 11:14 opt
dr-xr-xr-x 284 root root    0 Oct 23  2019 proc
drwx------   5 root root 4.0K Oct  4 00:14 root
drwxr-xr-x  34 root root  960 Oct 23 08:40 run
lrwxrwxrwx   1 root root    8 Sep 25 06:46 sbin -> usr/sbin
drwxr-xr-x  17 root root 4.0K Sep 25 20:30 snap
drwxr-xr-x   2 root root 4.0K Apr 16  2019 srv
dr-xr-xr-x  13 root root    0 Oct 23 08:52 sys
drwxrwxrwt  22 root root 4.0K Oct 23 08:46 tmp
drwxr-xr-x  14 root root 4.0K Apr 16  2019 usr
drwxr-xr-x  14 root root 4.0K Apr 16  2019 var
lrwxrwxrwx   1 root root   29 Oct 17 09:17 vmlinuz -> boot/vmlinuz-5.0.0-32-generic
lrwxrwxrwx   1 root root   29 Oct 21 11:44 vmlinuz.old -> boot/vmlinuz-5.0.0-29-generic
```

## stat

<div dir="rtl" markdown="1">
نمایش کامل اطلاعات یک دایرکتوری یا فایل
<div dir="ltr" markdown="1">

```
➜ stat os_lab.txt
  File: os_lab.txt
  Size: 36        	Blocks: 1          IO Block: 4096   regular file
Device: 815h/2069d	Inode: 40712       Links: 1
Access: (0777/-rwxrwxrwx)  Uid: ( 1000/ alireza)   Gid: ( 1000/ alireza)
Access: 2019-10-23 09:08:36.092243800 +0330
Modify: 2019-10-23 09:09:07.762983900 +0330
Change: 2019-10-23 09:09:07.762983900 +0330
 Birth: -
```

## info

<div dir="rtl" markdown="1">
نمایش اطلاعات کامل از یک دستور
<div dir="ltr" markdown="1">

***

<div dir="rtl" markdown="1">
 تفاوت میان دستور man و info :
<div dir="ltr" markdown="1">


* Info contains a lot more information than Man
* Man is older and is slowly being replaced by Info
* Man is displayed when there is no Info documentation found
* Man is typically a single page while Info is spread across multiple pages
* Info allows navigation while Man does not
***

```
➜ info ls
Next: dir invocation,  Up: Directory listing

10.1 ‘ls’: List directory contents
==================================

The ‘ls’ program lists information about files (of any type, including
directories).  Options and file arguments can be intermixed arbitrarily,
as usual.

   For non-option command-line arguments that are directories, by
default ‘ls’ lists the contents of directories, not recursively, and
omitting files with names beginning with ‘.’.  For other non-option
arguments, by default ‘ls’ lists just the file name.  If no non-option
argument is specified, ‘ls’ operates on the current directory, acting as
if it had been invoked with a single argument of ‘.’.

   By default, the output is sorted alphabetically, according to the
locale settings in effect.(1)  If standard output is a terminal, the
output is in columns (sorted vertically) and control characters are
output as question marks; otherwise, the output is listed one per line
and control characters are output as-is.

-----Info: (coreutils)ls invocation, 57 lines --Top-----------------------------
```

## pwd

<div dir="rtl" markdown="1">
نمایش مسیر جاری :
<div dir="ltr" markdown="1">

```
➜ pwd
/home/alireza
```

## whoami

<div dir="rtl" markdown="1">
نمایش کاربر فعلی :
<div dir="ltr" markdown="1">

```
➜ whoami
alireza
```

## cd

<div dir="rtl" markdown="1">
تغییر مسیر جاری .
<div dir="ltr" markdown="1">

***
<div dir="rtl" markdown="1">
تفاوت میان - cd  و cd .. :‌

با استفاده از .. میتوان به مسیر بالا تر رفت و با استفاده از - میتوان به مسیر قبلی که در آن بوده ایم بازگردیم . به مثال توجه کنین  .  
<div dir="ltr" markdown="1"➜

***

```
➜ /
➜ / cd -
/home
➜  /home
```

## touch
<div dir="rtl" markdown="1">
ایجاد یک فایل .
<div dir="ltr" markdown="1">

```
➜ ~ touch os_lab.txt
```

## mkdir
<div dir="rtl" markdown="1">
ایجاد دایرکتوری .
<div dir="ltr" markdown="1">

```
➜ ~ mkdir os_lab
```

## rmdir
<div dir="rtl" markdown="1">
حذف یک دایرکتوری خالی .
<div dir="ltr" markdown="1">

```
➜ ~ rmdir os_lab
```

## rm

<div dir="rtl" markdown="1">
پاک کردن یک فایل
<div dir="ltr" markdown="1">

#### rm -f

<div dir="rtl" markdown="1">
پاک کردن فایل بدون به صورت  force شده
<div dir="ltr" markdown="1">


#### rm -r

<div dir="rtl" markdown="1">
پاک کردن بوشه حاوی اطلاعات به صورت بازگشتی.
<div dir="ltr" markdown="1">



***
<div dir="rtl" markdown="1">
ازسوییچ ها میتوان به صورت ترکیبی نیز استفاده نمود . به مثال زیر توجه شود :‌
<div dir="ltr" markdown="1">

***

```
➜ ~ rm -rf os_lab
```


## cp

<div dir="rtl" markdown="1">
کپی یک  دایرکتوری خالی یا یک فایل به مسیر مشخص
<div dir="ltr" markdown="1">

#### cp -r

<div dir="rtl" markdown="1">
کپی یک دایرکتوری به همراه فایل هایش به مسیر مقصد.
<div dir="ltr" markdown="1">

```
➜ ~ cp -r os_lab/. test
```
