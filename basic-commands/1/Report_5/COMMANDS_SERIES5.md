# Commands  : Series 5

<div dir="rtl" markdown="1">
گزارش کار پنجم :‌
<div dir="ltr" markdown="1">

* [tar](#tar):
    * [cf](#cf)
    * [cvf](#cvf)
    * [tf](#tf)
    * [xf](#xf)
    * [xvf](#xvf)
    * [czf](#czf)


* Compilers:

    * [gcc](#gcc)

* Editors :
    * [vim](#vim)
    * [nano](#nano)

* `echo $?`


## tar

<div dir="rtl" markdown="1">
ساخت یک پروندۀ فشرده شده از نوع tar
سوییچ های زیر را داراست که پس از آن ها در انتهای دستور نیز محل قرار گیری فایل فشرده مورد نظر را وارد می نماییم.
<div dir="ltr" markdown="1">

* `c` : 

<div dir="rtl" markdown="1">
یک فایل فشرده با پسوند tar می سازد.
<div dir="ltr" markdown="1">

* `v` : 

<div dir="rtl" markdown="1">
مراحل فشرده سازی را تا پایان نمایش می دهد.
<div dir="ltr" markdown="1">

* `f` :

<div dir="rtl" markdown="1">
 پس از استفاده از این مشخصه؛ نام و نوع فایل را وارد می نماییم.
<div dir="ltr" markdown="1">

### cf

```
mehran@mehran:~$ tar cf mehran.tar mehran
mehran@mehran:~$ ls
Desktop    Downloads         mehran      Music     Public  Templates  Videos
Documents  examples.desktop  mehran.tar  Pictures  sss.py  test.py
```

### cvf 

```
mehran@mehran:~$ tar cvf test1.tar test1
test1/
mehran@mehran:~$ ls
alireza      Downloads            mehran.tar  Pictures   test1
alireza.tar  example.desktop.tar  Music       Public     test1.tar
Desktop      examples.desktop     music.tar   sss.py     test.py
Documents    mehran               Music.tar   Templates  Videos
```


### tf
<div dir="rtl" markdown="1">
محتوای فایل tar  را نشان می دهد. 
<div dir="ltr" markdown="1">

```
mehran@mehran:~$ ls
alireza      Downloads            mehran.tar  Pictures   test1
alireza.tar  example.desktop.tar  Music       Public     test1.tar
Desktop      examples.desktop     music.tar   sss.py     test.py
Documents    mehran               Music.tar   Templates  Videos
mehran@mehran:~$ tar tf mehran.tar 
mehran
```


### czf 
<div dir="rtl" markdown="1">
 ساخت یک فایل فشرده از نوع gz
<div dir="ltr" markdown="1">

```
mehran@mehran:~$ tar czf test2.tar.gz test2/
mehran@mehran:~$ ls
alireza      example.desktop.tar  music.tar       sss.py     test2.tar.gz
alireza.tar  examples.desktop     Music.tar       Templates  test.py
Desktop      mehran               Pictures        test1      Videos
Documents    mehran.tar           Picturs.tar.gz  test1.tar
Downloads    Music                Public          test2
mehran@mehran:~$ 
```


### xf 
<div dir="rtl" markdown="1">
 برای extract کردن از این سوییچ استفاده میشود.
<div dir="ltr" markdown="1">

```
mehran@mehran:~$ tar xf mehran.tar
mehran@mehran:~$ ls
alireza      example.desktop.tar  music.tar       sss.py     test2.tar.gz
alireza.tar  examples.desktop     Music.tar       Templates  test.py
Desktop      mehran               Pictures        test1      Videos
Documents    mehran.tar           Picturs.tar.gz  test1.tar
Downloads    Music                Public          test2
```

## Vim : 

<div dir="rtl" markdown="1">
Vim که مخفف Vi iMproved می‌باشد، یک ویرایشگر متن (Text Editor) بوده که بر پایه ویرایشگر Vi است. Vim علاوه بر اینکه تمام خواص Vi را به ارث برده است، عملکرد و توسعه‌پذیری بالاتری نسبت به Vi دارد.
ویرایشگر متن Vim ویرایشگری Modal است. بدین معنی که در آن، Mode یا حالت‌های مختلفی داریم. برای مثال وقتی در Vim دکمه i را فشار دهید ممکن است حرف i را چاپ کند و یا اینکه شما را به حالت insert mode ببرد.

Vim سه Mode یا حالت دارد:
<div dir="rtl" markdown="1">

* `Command Mode : `
<div dir="rtl" markdown="1">
در این حالت هر دکمه‌ای از کیبرد که وارد شود، به عنوان دستور تفسیر می‌شود.
 با زدن کلید I وارد مود نوشتاری می شود.
<div dir="rtl" markdown="1">

* `Insert Mode : `
<div dir="rtl" markdown="1">
در این حالت هر دکمه‌ای که وارد شود، در ویرایشگر کاراکتر متناظر با آن دکمه درج می‌شود.
با زدن Esc وارد مود دستوری میشود.
<div dir="rtl" markdown="1">

* `Visual Mode : `
<div dir="rtl" markdown="1">
در این حالت تمام کارهای بصری مانند highlight کردن و انتخاب قسمتی از متن، را می‌توان انجام داد.
<div dir="rtl" markdown="1">

<div dir="ltr" markdown="1">

* `DD` :  خطی که نشانگر در ان است را پاک میکند .

* `P` : متن را paste میکند .

* `Yy` : متن را کپی میکند .

* `X` : کاراکتر را پاک میکند .

* ` “…..”/` : عبارت …. را 
جستجو میکند.

* `w` : دستورات را ذخیره میکند.

* `!q` : برای خروج استفاده میشود .

* `!` : می توان دستورات سیستم عامل را اجرا کرد و دید .

* `S/“…..”/book` : اولین “…..”را پیدا میکند و با book جایگزین میکند .

* `U` : دستورات را برمیگرداند `(undo)`

* `a` : ستورات را جلو میبرد`(redo)`
<div dir="ltr" markdown="1">

## nano

<div dir="rtl" markdown="1">
یک ادیتور ساده مخصوص سیستم های Linux ای. 
<div dir="rtl" markdown="1">

<div dir="ltr" markdown="1">

**Syntax :**

`nano [options] [[+line[,column]] file]`
<div dir="ltr" markdown="1">

## gcc 

The GNU Compiler Collection includes front ends for `C`, `C++`, `Objective-C`, `Fortran`, `Ada`, `Go`, and `D`, as well as libraries for these languages (libstdc++,...).

GCC was originally written as the compiler for the `GNU operating system`. The GNU system was developed to be 100% free software, free in the sense that it respects the user's freedom.

<div dir="rtl" markdown="1">
برای کامپایل برنامه هایی که با C++ نوشته شده اند با استفاده از GCC به صورت زیر عمل میکنیم  : 
<div dir="rtl" markdown="1">


<div dir="ltr" markdown="1">

here is a simple code in c in test.c file : 

```c
#include<stdio.h>

int main() {

    printf("Hello World!\n");

    return 0;
}
```

to run compile it : 

```
➜  os_lab gcc -o test test.c 
➜  os_lab ./test 
Hello World!
➜  os_lab 
```

Compile and run the program using any of the following command:

* Compiling C program:

    * `$ sudo gcc first.c` : 
    
      It will create an executable file with “.out” extension named as “a.out”
    * `$ sudo gcc –o first first.c` : 

         Where first is the executable or object file of first.c program.

* Compiling C++ program:

    * `$ sudo g++ hello.cpp (or)`

    * `$ sudo g++ -o hello hello.cpp`

**[Note: Make sure you are in the same directory where you have created your program before compiling it.]**

To run this program type this command:

* Running C program : 

    * `$ ./a.out (If you compiled using first command)`

    * `$ ./first (If you compiled using second command)`

* Running C++ program : 

    *  ` $ ./a.out (If you compiled using first command)`

    *   `$ ./hello (If you compiled using second command)`

## echo $?

<div dir="rtl" markdown="1">
exit کد آخرین برنامه اجرا شده را نمایش میدهد : 
<div dir="rtl" markdown="1">

<div dir="ltr" markdown="1">

```
➜  os_lab gcc -o test test.c 
➜  os_lab ./test 
Hello World!
➜  os_lab echo $?
0
➜  os_lab 
```