:دستورات در این قسمت
----------
+ stat
+ whoami
+ more
+ '>'
+ '>>'
+ less
+ cat
+ echo
+ grep
+ clear
+ id
+ su
+ exit
+ ls -lR
+ '|' \ pipeline
+ passwd
----------


### stat:
<div dir="rtl" markdown="2">
نمایش اطلاعات کامل فایل ها
<div dir="rtl" markdown="2">

`````
$ stat test.txt 
  File: `test.txt'
  Size: 1014      	Blocks: 8          IO Block: 4096   regular file
Device: 805h/2053d	Inode: 1448800     Links: 1
Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)
Access: 2012-07-21 17:20:33.548997182 +0530
Modify: 2011-08-16 23:27:19.648480473 +0530
Change: 2011-08-16 23:27:19.648480473 +0530
`````


----------


### whoami:
<div dir="rtl" markdown="1">
نمایش نام فعلی یوزر 
<div dir="rtl" markdown="1">

`````
$ whoami
mohika
`````


----------


### more:
<div dir="rtl" markdown="2">
نمایش متن و خواندن فایل های متنی
قسمتی از متن فقط نمایش داده میشود
<div dir="rtl" markdown="2">

`````
$ more <file name>  
Line 1
Line 2 
Line 3
Line 4
Line 5
Line 6
Line 7
Line 8
Line 9
Line 10
--More--(52%)
`````


----------


### '>':
<div dir="rtl" markdown="2">
خروجی یک دستور را به عنوان ورودی دستور دیگری در نظر گرفت 
به این طور که متن قبلی را به کلی حذف میکند
<div dir="rtl" markdown="2">

`````
$ test > test1
`````


----------


### '>>':
<div dir="rtl" markdown="2">
خروجی یک دستور را به عنوان ورودی دستور دیگری در نظر گرفت 
متن یا فایل را به صورت ضمیمه به فایل اضافه میکند
<div dir="rtl" markdown="2">

`````
$ test >> test1
`````


----------


### less:
<div dir="rtl" markdown="2">
به شما قابلیت کنترل بیشتری را هنگام نمایش یک فایل اهدا می‌کند
نمایش بیشتری نسبت به دستور more
<div dir="rtl" markdown="2">

`````
$ more <file name>  
Line 1
Line 2 
Line 3
Line 4
Line 5
Line 6
Line 7
Line 8
Line 9
Line 10 
Line 11
Line 12 
Line 13
Line 14
Line 15
Line 16
Line 17
Line 18
`````


----------


### cat:
<div dir="rtl" markdown="2">
نمایش محتوای یک فایل به صورت کامل
<div dir="rtl" markdown="2">

`````
$ cat <fileName>  
justTest
justTest
justTest
justTest
justTestjustTestjustTest
justTest
justTest
faugjkab
justTestjustTest
`````


----------


### echo:
<div dir="rtl" markdown="2">
چاپ متون در ترمینال
<div dir="rtl" markdown="2">

`````
$ echo WhoIsMehmed?
WhoIsMehmed?
`````


----------


### clear:
<div dir="rtl" markdown="2">
پاک کردن کامل صفحه ترمینال
<div dir="rtl" markdown="2">

`````
$ clear
`````


----------


### grep:
<div dir="rtl" markdown="2">
پیدا کردن یک الگوی خاص یا یک کلمه از یک متن 
نمایش خطهای ک ان الگو یا کلمه را دارند
<div dir="rtl" markdown="2">

`````
$ grep "the" demo_file
THIS LINE IS THE 1ST UPPER CASE LINE IN THIS FILE.
this line is the 1st lower case line in this file.
This Line Has All Its First Character Of The Word With Upper Case.
And this is the last line.
`````


----------


### id:
<div dir="rtl" markdown="2">
نمایش اطلاعات یوزر فعلی
<div dir="rtl" markdown="2">

`````
$ id 
uid=1000(mohika) gid=1000(mohika) groups=1000(mohika),4(adm),
24(cdrom),27(sudo),30(dip),46(plugdev),111(libvirtd),112(lpadmin),113(sambashare)
`````


----------


### su:
<div dir="rtl" markdown="2">
عوض کردن یوزر فعلی کاربر با این دستور 
در صورت نبودن یوزری به یوزر روت میرود
<div dir="rtl" markdown="2">

`````
mohika@ubuntu:~/Desktop$ su
password: 
root@ubuntu:
`````


----------


### exit:
<div dir="rtl" markdown="2">
خارج شدن از یوزر فعلی
<div dir="rtl" markdown="2">

`````
$ exit
`````


----------


### ls -lR:
<div dir="rtl" markdown="2">
نمایش دایرکتوری ها و فایل های موجود 
<div dir="rtl" markdown="2">

`````
ls -LR
total 56
lrwxrwxrwx  1 george users    25 Sep 22 14:17 bin -> /home/george/dotfiles/bin
drwxr-xr-x  6 george users  4096 Oct  4 20:27 code
drwxr-xr-x 10 george users  4096 Oct  4 09:13 dotfiles
drwx------  3 george users  4096 Oct  4 11:31 Downloads
-rw-r--r--  1 george users     0 Oct  4 20:42 file.txt
drwxr-xr-x  5 george users  4096 Sep 25 08:30 go
drwx------  3 george users  4096 Sep 27 10:49 irc
drwxr-xr-x  2 george users 32768 Oct  4 09:15 logs
drwxr-xr-x  8 george users  4096 Oct  2 17:13 src
`````


----------


### '|' \ pipeline:
<div dir="rtl" markdown="2">
به این طور که خروجی یک دستور ورودی دستور دیگر قرار میگیرد
<div dir="rtl" markdown="2">

`````
cat filename | less 
`````


----------


### passwd:
<div dir="rtl" markdown="2">
پسوردهای یوزرها را مدیریت میکند و ابزاری برای عوض کردن و مدیریت کردن پسوردهای یوزرها
<div dir="rtl" markdown="2">

`````
mohika@ubuntu:~$ passwd
Changing password for unity.
(current) UNIX password: 
Enter new UNIX password: 
Retype new UNIX password: 
passwd: password updated successfully
`````


----------
