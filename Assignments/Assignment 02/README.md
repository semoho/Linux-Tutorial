# Commands

<div dir="rtl" markdown="1">
دستورات درون ترمینال در جلسه قبلی :  
<div dir="ltr" markdown="1">

- more
- '>'
- '>>'
- less
- cat
- echo
- grep 
- clear
- id
- su
- exit 
- ls -lR
- '|'


### more: 
<div dir="rtl" markdown="1">
از این دستور برای خواندن اطلاعات فایل های متنی استفاده میشود ولی نمی توان اسکرول کرد
<div dir="ltr" markdown="1">

```linux
--- more <File> ---
>more Loremipsum.txt 
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam convallis justo vit
ae massa egestas, non ultrices risus vehicula. Fusce nec nulla purus. Morbi susc
ipit mauris sed neque ornare placerat. Sed at tempor sem. Aliquam gravida rhoncu
s arcu et sollicitudin. Duis finibus a nunc ut eleifend. Cras at diam id metus s
emper sagittis. In hac habitasse platea dictumst. Integer congue vehicula hendre
rit.

Maecenas quis massa pharetra, finibus ex eget, vehicula urna. Cras rhoncus tinci
dunt tellus eu rutrum. Donec sit amet faucibus ipsum. Aliquam dapibus ac risus e
u feugiat. Sed consectetur lacus non leo iaculis ornare. Integer sodales bibendu
m eros, nec dictum lacus imperdiet sit amet. Suspendisse aliquam sodales sollici
tudin. Morbi mattis non dolor ut dignissim. Nam odio dui, ornare sed libero vel,
 fringilla pellentesque augue. Quisque ex mi, luctus sed accumsan a, imperdiet u
t nisi. Sed ac convallis lectus. Duis metus libero, aliquam non augue ac, accums
an laoreet velit. In lacinia tincidunt risus, scelerisque euismod turpis digniss
im et. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per i
nceptos himenaeos. Aenean eget leo et turpis imperdiet mollis. Praesent sed puru
s cursus purus eleifend tempus eu sed eros.

Aliquam tempor mollis magna sed malesuada. Nunc sit amet malesuada metus. Nulla 
nibh mauris, ultricies at augue et, placerat interdum sapien. Sed volutpat ultri
ces augue ut auctor. Pellentesque molestie fermentum venenatis. Donec mi ligula,
 congue quis sodales nec, dapibus vitae ligula. Nam maximus velit nec lacus ultr
--More--(52%)
```

### '>': 
<div dir="rtl" markdown="1">
این دستور محتوای خروجی دستور قبل را در فایلی که جلوی این دستور معرفی شده ثبت میکند اگر فایل موجود نباشد ان فایل را میسازد ولی اگر فایل موجود باشد تمام محتوای قبلی ان را حذف میکند
<div dir="ltr" markdown="1">

```linux
--- <Command> > <File> ---
```

### '>>': 
<div dir="rtl" markdown="1">
این دستور محتوای خروجی دستور قبل را در فایلی که جلوی این دستور معرفی شده ثبت میکند اگر فایل موجود نباشد ان فایل را میسازد اگر فایل موجود باشد خروجی دستور به انتهای محتوای فایل اضافه می شود
<div dir="ltr" markdown="1">

```linux
--- <Command> >> <File> ---
```


### less: 
<div dir="rtl" markdown="1">
از این دستور برای نمایش محتوای فایل ها استفاده میشود. تفاوت آن با دستور more در این است که دستور more قابلیت اسکرول کردن به سمت بالا را ندارد ولی less این قابلیت را دارد. همچنین در less لازم نیست همانند more تمام فایل خوانده و نمایش داده شود. بلکه بخشی از فایل لود و نمایش داده می شود.
<div dir="ltr" markdown="1">

```linux
--- less <File> ---
>less Loremipsum.txt
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam convallis justo vitae massa egestas, non ultrices risus vehicula. Fusce nec nulla purus. Morbi suscipit mauris sed neque ornare placerat. Sed at tempor sem. Aliquam gravida rhoncus arcu et sollicitudin. Duis finibus a nunc ut eleifend. Cras at diam id metus semper sagittis. In hac habitasse platea dictumst. Integer congue vehicula hendrerit.

Maecenas quis massa pharetra, finibus ex eget, vehicula urna. Cras rhoncus tincidunt tellus eu rutrum. Donec sit amet faucibus ipsum. Aliquam dapibus ac risus eu feugiat. Sed consectetur lacus non leo iaculis ornare. Integer sodales bibendum eros, nec dictum lacus imperdiet sit amet. Suspendisse aliquam sodales sollicitudin. Morbi mattis non dolor ut dignissim. Nam odio dui, ornare sed libero vel, fringilla pellentesque augue. Quisque ex mi, luctus sed accumsan a, imperdiet ut nisi. Sed ac convallis lectus. Duis metus libero, aliquam non augue ac, accumsan laoreet velit. In lacinia tincidunt risus, scelerisque euismod turpis dignissim et. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean eget leo et turpis imperdiet mollis. Praesent sed purus cursus purus eleifend tempus eu sed eros.

Aliquam tempor mollis magna sed malesuada. Nunc sit amet malesuada metus. Nulla nibh mauris, ultricies at augue et, placerat interdum sapien. Sed volutpat ultrices augue ut auctor. Pellentesque molestie fermentum venenatis. Donec mi ligula, congue quis sodales nec, dapibus vitae ligula. Nam maximus velit nec lacus ultrLoremipsum.txt
Loremipsum.txt
```


### cat: 
<div dir="rtl" markdown="1">
محتوای فایل را گرفته و در ترمینال چاپ می کند.
<div dir="ltr" markdown="1">

```linux
--- cat <File> ---
>cat Loremipsum.txt 
```

### cat >: 
<div dir="rtl" markdown="1">
بعد از زدن این دستور در ترمینال، میتوان تمام متن های نوشته شده در ترمینال را، در فایل ذخیره کرد.
<div dir="ltr" markdown="1">

```linux
--- cat > <File> ---
>cat > text.txt
Hello World
this is a test
bye
<Ctrl + D to end typing mode>
```


### echo: 
<div dir="rtl" markdown="1">
هر متنی که به آن بدهیم را در ترمینال چاپ می کند.
<div dir="ltr" markdown="1">

```linux
--- echo <Text> ---
>echo hi
hi
```

### echo >: 
<div dir="rtl" markdown="1">
متن داده شده را به جای نمایش در ترمینال در فایل میریزد.
<div dir="ltr" markdown="1">

```linux
--- echo <Text> > <File> ---
>echo hi > tx.txt
>cat tx.txt 
hi
```


### grep: 
<div dir="rtl" markdown="1">
با استفاده از این دستور می توان متنی را در فایل ها سرچ کرد. خروجی دستور شامل تمام خطوطی است که شامل متن ورودی دستور است می باشد.
<div dir="ltr" markdown="1">

```linux
--- grep <Pattern> <Files> ---
>grep ds* tx.txt
asfs'd'gsgsbz'd'vf
svs'd'v'd'fvf 
'd'zg
'ds' f
'ds' f
```


### clear: 
<div dir="rtl" markdown="1">
صفحه ترمینال را پاک میکند.
<div dir="ltr" markdown="1">

```linux
--- clear ---
> clear
```


### id: 
<div dir="rtl" markdown="1">
اطلاعات یوزر فعلی (تاثیر گذار) را نمایش میدهد.
<div dir="ltr" markdown="1">

```linux
--- id ---
>id
uid=1000(amir) gid=1000(amir) groups=1000(amir),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),116(lpadmin),126(sambashare)
```


### su: 
<div dir="rtl" markdown="1">
از این دستور برای جا به جا شدن بین یوزرهای مختلف سیستم استفاده می شود. پس از وارد کردن اسم یوزر جلوی این دستور از کاربر درخواست رمز میکند و پس از وارد کردن آن، وارد یوزر میشویم. اگر جلوی دستور اسم یوزری نوشته نشود وارد یوزر روت میشویم

/etc/passwd -> اطلاعات تمامی یوزرهای موجود در سیستم در این فایل است   
/etc/shadow -> اطلاعات تمام یوزرهای سیستم به صورت کد شده در این فایل است
<div dir="ltr" markdown="1">

```linux
--- su <UserName/Empty> ---
[samadipour@localhost ~]$ su
Password: 
[root@localhost samadipour]# 
```


### exit: 
<div dir="rtl" markdown="1">
خروج از اخرین یوزر وارد شده
<div dir="ltr" markdown="1">

```linux
--- exit ---
[root@localhost samadipour]# exit
exit
[samadipour@localhost ~]$
```


### ls -lR (l: Long Listing, R: recursive): 
<div dir="rtl" markdown="1">
این دستور تمامی دایرکتوری ها و فایل های موجود در آنها رو با تمام اطلاعات نشان میدهد
<div dir="ltr" markdown="1">

```linux
--- ls -lR <Directory/Empty> ---
>ls -lR
.:
total 4
-rw-rw-r--. 1 samadipour samadipour 291 Oct 22 16:29 aa.txt
drwxr-xr-x. 2 samadipour samadipour  20 Oct 22 16:27 Desktop
drwxr-xr-x. 2 samadipour samadipour   6 Oct 15 16:19 Documents
drwxr-xr-x. 2 samadipour samadipour   6 Oct 15 16:19 Downloads
drwxr-xr-x. 2 samadipour samadipour   6 Oct 15 16:19 Music
drwxr-xr-x. 2 samadipour samadipour   6 Oct 15 16:19 Pictures
drwxr-xr-x. 2 samadipour samadipour   6 Oct 15 16:19 Public
drwxr-xr-x. 2 samadipour samadipour   6 Oct 15 16:19 Templates
drwxr-xr-x. 2 samadipour samadipour   6 Oct 15 16:19 Videos

./Desktop:
total 4
-rw-rw-r--. 1 samadipour samadipour 66 Oct 22 16:27 aa.txt

./Documents:
total 0

./Downloads:
total 0

./Music:
total 0

./Pictures:
total 0

./Public:
total 0

./Templates:
total 0

./Videos:
total 0
```


### '|': 
<div dir="rtl" markdown="1">
از این علامت برای ترکیب دستورات استفاده میشه به اینصورت که خروجی دستور قبل از خود را به عنوان ورودی دستور بعد از خود در نظر می گیرد
<div dir="ltr" markdown="1">

```linux
--- <Command> | <Command> | ... ---
```