# Commands

<div dir="rtl" markdown="1">
دستورات ترمینال این جلسه :  
<div dir="ltr" markdown="1">

- sed
- awk

## sed: 
<div dir="rtl" markdown="1">
یک از ابزارهای پردازش متن معروف، قدیمی و کاربردی در سیستم عامل های مبتنی بر یونیکس، sed نام دارد که به منظور تغییر محتویات یک فایل به کار گرفته می‌شود (نام این دستور برگرفته از عبارت Stream Editor است).

با استفاده از ابزار sed می‌توان به فیلتر کردن متن و همچنین جایگزین کردن برخی واژگان به واژگانی دیگر پرداخت. دیتای مد نظر از Input Stream گرفته می‌شود سپس عملیات مد نظر در فاز Working Stream روی دیتای ورودی اعمال شده و در نهایت خروجی در Output Stream ذخیره می‌شود.

فایلی می‌سازیم تحت عنوان file و عبارت this is just for learning را وارد آن می کنیم:
<div dir="ltr" markdown="1">

```linux
>cat > file
this is just for learning
```
>sed s/is/are/ file

<div dir="rtl" markdown="1">
دستور بالا تمام is ها را با are در متن file جایگزین میکند.
در خروجی دستور داریم:
<div dir="ltr" markdown="1">

```
thare is just for learning
```

<div dir="rtl" markdown="1">
همونطور که معلوم است اولین is در this به are تبدیل شده است.

این جایگزینی در فایل ذخیره نمیشود و فقط به عنوان خروجی نشان داده میشود.

حال اگر بخواهیم تمام is ها به are تبدیل شود باید از دستور زیر استفاده کنیم.
<div dir="ltr" markdown="1">

>sed s/is/are/g file

<div dir="rtl" markdown="1">
که خروجی به حالت زیر است:
<div dir="ltr" markdown="1">

```
thare are just for learning
```

<div dir="rtl" markdown="1">
حال اگر بخواهیم تمام این تغییرات در فایل هم ذخیره شود از دستور زیر استفاده میکنیم.
<div dir="ltr" markdown="1">

>sed -i 's/is/are/' file

## awk
<div dir="rtl" markdown="1">
ابزار awk معمولاً برای گزارش گیری از فایل‌های مختلف مورد استفاده قرار می‌گیرد. این ابزار در Bell Labs در دهه ی ۱۹۷۰ میلادی توسعه یافت و وجه تسمیه ی آن برگرفته از نام توسعه دهندگانش Alfred Aho، Peter Weinberger، Brian Kernighan و  است. ابزار awk قابلیت‌های بیشماری دارد که از جمله ی مهم‌ترین آن‌ها می‌توان به موارد زیر اشاره کرد:

- یک ابزار قدرتمند و یک زبان برنامه نویسی تفسیری است.
- برای پردازش متن، تهیه ی گزارش و ارائه ی گزارش های اطلاعاتی به کار گرفته می‌شود.

برای روشن‌تر شدن کاربرد ابزار awk ابتدا یک فایل جدید تحت عنوان file به صورت زیر می‌سازیم:
<div dir="ltr" markdown="1">

```
>cat > testFile
username: amir
password: 123456789
```

<div dir="rtl" markdown="1">
حال دستور زیر را اجرا میکنیم:
<div dir="ltr" markdown="1">

>awk -F: '{print $1}' file


<div dir="rtl" markdown="1">
دستور بالا به این صورت است که awk ابتدا فایل مقصد را میگیرد و با فیلتر F- میتوانیم یک کارکتر جداکننده به آن بدهیم. در اینجا این فیلتر : است که باعث میشود متن را از قسمت : بشکند.

حال به عنوان دستور به آن گفتیم که بخش اول آن را چاپ کند.

در نتیجه خروجی به صورت زیر است:
<div dir="ltr" markdown="1">

```
username
password
```