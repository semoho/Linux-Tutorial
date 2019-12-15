# Commands

<div dir="rtl" markdown="1">
دستورات ترمینال این جلسه :  
<div dir="ltr" markdown="1">

- tar
- vim
- nano
- gcc
- echo $?


## tar: 
<div dir="rtl" markdown="1">
برای ساخت فایل های فشرده استفاده می‌شود.
<div dir="ltr" markdown="1">

```linux
--- tar -c [-f ARCHIVE] [OPTIONS] [FILE...] ---
(c: create, f: file name) -> tar file
>tar -cf compress.tar Files/
-rw-r--r--  1 amir amir 20480 Nov 25 15:06 compress.tar
```

```linux
(v: verbosely show progress) -> tar file
>tar -cvf compress.tar Files/
Files/
Files/f7.txt
Files/f2.txt
Files/f8.txt
Files/f6.txt
Files/f4.txt
Files/f9.txt
Files/f5.txt
Files/f10.txt
Files/f3.txt
Files/f1.txt
```

```linux
(Z: compress) -> extract tar file
>tar -czf moreCompress.tar Files/
-rw-r--r--  1 amir amir 20480 Nov 25 15:23 compress.tar
-rw-r--r--  1 amir amir   305 Nov 25 15:23 moreCompress.tar
```

```linux
--- tar -t [-f ARCHIVE] [OPTIONS] [MEMBER...] ---
(t: list content) -> show content of .tar
>tar -tf compress.tar 
Files/
Files/f7.txt
Files/f2.txt
Files/f8.txt
Files/f6.txt
Files/f4.txt
Files/f9.txt
Files/f5.txt
Files/f10.txt
Files/f3.txt
Files/f1.txt
```


```linux
--- tar -x [-f ARCHIVE] [OPTIONS] [MEMBER...] ---
(x: extract) -> extract tar file
>tar -xf compress.tar
```

## vim: 
<div dir="rtl" markdown="1">
Vim یک نرم افزار فوق العاده قدرتمند ویرایشگر متن است.

ویم دارای سه حالت است:   
۱-حالت فرمان(Command Mod) : حالت کامند مود اولین حالتی است که بعد از باز کردن فایل با آن مواجه میشوید.در این حالت شما می توانید به وارد کرد دستورات خاصی بپردازید و در جهت بهبود ویرایش خود پیش روید   
۲-حالت درج (Insert Mod) : در این حالت میتوانید متن داخل فایل مورد نظر را ویرایش کنید   
۳-حالت اجرا (execute mode) : در این حالت میتوانید فرامین سیستم عامل گنو/لینوکس را به اجرا در آورید   

می توانید از کلید های زیر هم در حالت فرمان استفاده کنید:   
۱- حرف h برای حرکت به سمت چپ   
۲- حرف j برای حرکت به سمت پایین   
۳- حرف k برای حرکت به سمت بالا   
۴- حرف l برای حرکت به راست   

حذف کارکتر ها در حالت فرمان:    
۱- فرمان x با توجه به مکان فعلی cursor کارکتر مورد نظر را پاک می کند.   
۲- فرمان dw واژه ی جاری را حذف می کند   
۳- فرمان dd خط جاری را حذف می کند   
۳- فرمان d2w دو کلمه را حذف می کند   
نکته: در صورت حذف اشتباهی یک متن می توانید با دکمه ی u آن را باز گردانی کنید.

فرمان جست و جوی متن:  
برای جست و جو در متن باید ابتدا / را درج کرده سپس کلمه ی مورد نظر را بنویسیم. به عنوان مثال ما میخوایم کلمه ی error را در متن جست و جو کنیم:
error/   
میبینید که کلمات error همگی هایلایت شده اند!

نکته۱: با زدن دکمه ی n می توانید به واژه ی هایلایت بعدی بروید   
نکته۲: همچنان ویم به حروف بزرگ و کوچک حساس است! در نتیجه error با Error بسیار متفاوت است.      

با استفاده از دستور !q: میتوان از vim خارج شد و ولی تغییرات ذخیره نمیشود. برای ذخیره تغییرات میتوان از دستور wq: استفاده کرد. 


با استفاده از کلید i به معنای Insert می توانید به موقعیت فعلی مکان نما بروید و شروع به نوشتار کنید(در واقع قبل از مکان نما)


<div dir="ltr" markdown="1">

```linux
--- vim [options] [file ..] ---
>vim t.txt
```

## nano: 
<div dir="rtl" markdown="1">
یکی دیگر از ویرایش گر های لینوکس nano است که به دلیل سادگی محبوبیت زیادی دارد.
<div dir="ltr" markdown="1">

```linux
--- nano [options] [[+line[,column]] file]... ---
>nano azar.txt
```

## gcc: 
<div dir="rtl" markdown="1">
فایل مورد نظر را با استفاده از کامپایلر gcc کامپایل کرده و فایل اجرایی ان را میسازد.
<div dir="ltr" markdown="1">

```linux
--- gcc [-o outfile] file ---
>cat > hello.c
#include<stdio.h>
int main() {
    printf("Hello World\n");
    return 0;
}

>gcc -o abc hello.c 
-rwxrwxr-x. 1 samadipour samadipour 11080 Nov 26 14:58 abc

>./abc
Hello World
```

## echo $?: 
<div dir="rtl" markdown="1">
نتیجه خروجی اخرین اجرا را پرینت میکند.
<div dir="ltr" markdown="1">

```linux
--- echo $? ---
>echo $?
0
```