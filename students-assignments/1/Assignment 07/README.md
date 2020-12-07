# Commands

<div dir="rtl" markdown="1">
دستورات ترمینال این جلسه :  
<div dir="ltr" markdown="1">

- sed
- awk

## sed: 
<div dir="rtl" markdown="1">
یکی از ابزارهای پردازش متن معروف sed نام دارد که به منظور تغییر محتویات یک فایل به کار گرفته می‌شود.

فایلی می‌سازیم تحت عنوان text و عبارت زیر را وارد آن می کنیم:
<div dir="ltr" markdown="1">

```linux
>cat > text.txt
there is only one thing that makes a dream impossible to achieve: the fear of failure. 
- Paulo Coelho, The Alchemist
```
>sed '' text.txt

<div dir="rtl" markdown="1">
با استفاده از دستور بالا تمام متن داخل فایل چاپ میشود و هیچ تغییری اتفاق نمی افتد چون ما هیچ الگویی به آن ندادیم.
<div dir="ltr" markdown="1">

```
there is only one thing that makes a dream impossible to achieve: the fear of failure. 
- Paulo Coelho, The Alchemist
```

>sed -e '2d' text.txt

<div dir="rtl" markdown="1">
با استفاده از دستور بالا میتوانیم خط دوم را از متن را پاک کنیم که خروجی زیر را دارد:
<div dir="ltr" markdown="1">

```
there is only one thing that makes a dream impossible to achieve: the fear of failure. 
```

<div dir="rtl" markdown="1">
حال اگر بخواهیم کلمه ای را در متن بالا جایگزین کنید از دستور زیر استفاده میکنیم:
<div dir="ltr" markdown="1">

>sed 's/the/CHANGED/' text.txt

<div dir="rtl" markdown="1">
که خروجی زیر را دارد:
<div dir="ltr" markdown="1">

```
CHANGEDre is only one thing that makes a dream impossible to achieve: the fear of failure. 
- Paulo Coelho, The Alchemist
```

<div dir="rtl" markdown="1">
همونطور که معلوم است اولین the در there به CHANGED تبدیل شده است.

این جایگزینی در فایل ذخیره نمیشود و فقط به عنوان خروجی نشان داده میشود.

حال اگر بخواهیم تمام تکرار های این کلمه جایگزین شود از دستور زیر استفاده میکنیم.
<div dir="ltr" markdown="1">

>sed 's/the/CHANGED/g' text.txt

<div dir="rtl" markdown="1">
که خروجی به حالت زیر است:
<div dir="ltr" markdown="1">

```
CHANGEDre is only one thing that makes a dream impossible to achieve: CHANGED fear of failure. 
- Paulo Coelho, CHANGED Alchemist
```

<div dir="rtl" markdown="1">
حال اگر بخواهیم تمام این تغییرات در فایل هم ذخیره شود از دستور زیر استفاده میکنیم.
<div dir="ltr" markdown="1">

>sed -i 's/the/CHANGED/g' text.txt

## awk
<div dir="rtl" markdown="1">
ابزار awk معمولاً برای گزارش گیری از فایل‌های مختلف مورد استفاده قرار می‌گیرد.

برای روشن‌تر شدن کاربرد ابزار awk ابتدا یک فایل جدید با محتویات زیر می‌سازیم:
<div dir="ltr" markdown="1">

```
1) Amit     Physics    80
2) Rahul    Maths      90
3) Shyam    Biology    87
4) Kedar    English    85
5) Hari     History    89
```

<div dir="rtl" markdown="1">
سپس دستور زیر را بر روی آن میزنیم تا ساده ترین حالت ممکن این دستور را ببینیم
<div dir="ltr" markdown="1">

>awk '{print}' marks.txt

<div dir="rtl" markdown="1">
که خروجی دقیقا همان متن قبلی است:
<div dir="ltr" markdown="1">

```
1) Amit     Physics    80
2) Rahul    Maths      90
3) Shyam    Biology    87
4) Kedar    English    85
5) Hari     History    89
```

<div dir="rtl" markdown="1">
حال کمی به جلو تر میرویم. اگر بخواهیم خروجی را به تعدادی ستون محدود کنیم از دستور زیر استفاده میکنیم:
<div dir="ltr" markdown="1">

>awk '{print $3 "\t" $4}' marks.txt

<div dir="rtl" markdown="1">
در اینجا ما متن رو به ستون سوم و چهارم محدود میکنیم.

دستور بالا خروجی زیر را دارد:
<div dir="ltr" markdown="1">

```
Physics   80
Maths     90
Biology   87
English   85
History   89
```

<div dir="rtl" markdown="1">
البته این دستور فقط محدود به کار های ساده از قبیل محدود کردن سطر و ستون نیست و کار های آماری و محدودیت های بیشتری را میتوان اعمال کرد.

برای مثال دستور زیر فقط سطر هایی را نشان میدهد که بیشتر از 18 کارکتر باشند.
<div dir="ltr" markdown="1">

>awk 'length($0) > 18' marks.txt

<div dir="rtl" markdown="1">
که خروجی به حالت زیر است:
<div dir="ltr" markdown="1">

```
3) Shyam   Biology   87
4) Kedar   English   85
```
