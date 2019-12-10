# Bash Script

<div dir="rtl" markdown="1">
شل برنامه‌ای است که می‌توان در آن دستوراتی را جهت اجرا توسط سیستم وارد کرد. پنجره ترمینال در لینوکس خود یک برنامه شل است که همراه رابط کاربری است. وقتی دستوری را در این خط فرمان وارد می‌کنید، توسط شل اجرا می شود و نتیجه در صفحه نمایش داده می‌شود.
شل این قابلیت را دارد که دستورات در یک فایل را اجرا کند که به این نوع اسکریپت‌نویسی شل می گویند.
<div dir="ltr" markdown="1">

## Create First Bash - Hello World: 
<div dir="rtl" markdown="1">
در ابتدا باید بگوییم که این فایل، یک فایل Bash است. یک فایل با نام دلخواه و پسوند sh میسازیم. 

در خط اول حتما باید خط زیر را بنویسیم تا به آن بفهمانیم که این یک فایل Bash است. در واقع این فایل مشخص میکند که کدام برنامه این فایل را پردازش کند.
<div dir="ltr" markdown="1">

>#!/bin/bash

<div dir="rtl" markdown="1">
همچنین باید در خط بعدی برنامه ای که میخواهیم اجرا شود را بنویسیم. برای اولین برنامه میخواهیم که در کنسول فقط Hello World نمایش داده شود.
<div dir="ltr" markdown="1">

>echo 'Hello World'

<div dir="rtl" markdown="1">
در نهایت یک فایل با پسوند sh و محتوای زیر داریم.
<div dir="ltr" markdown="1">

```bash
#!/bin/bash
echo "Hello World"
```

<div dir="rtl" markdown="1">
در نهایت برای اجرای فایل بالا باید از دستور زیر استفاده کنیم.
<div dir="ltr" markdown="1">

```linux
> chmod u+x filename.sh
> ./filename.sh
```

## Variable
<div dir="rtl" markdown="1">
برای تعریف متغیر از روش زیر استفاده میکنیم
<div dir="ltr" markdown="1">

```bash
#!/bin/bash
name="John"
age=18
echo $name
echo $age
echo $age
echo "${name} is ${age} years old"
```

>./variable.sh

## Input

<div dir="rtl" markdown="1">
با روش زیر میتوانیم از کنسول ورودی بخونیم و منتظر جواب کاربر بمانیم.
<div dir="ltr" markdown="1">

```bash
#!/bin/bash
echo -n "Proceed? [y/n]: "
read ans
echo $ans
```

>./input.sh   
>y

## Arguments

<div dir="rtl" markdown="1">
اگر بخواهیم چند پارامتر را به فایل Bash پاس بدهیم از روش زیر استفاده میکنیم.
<div dir="ltr" markdown="1">

```bash
#!/bin/bash
echo "This is First Argument: ${1}"
echo "This is Second Argument: ${2}"
echo "We Have $# Arguments"
```

>./argument.sh one two three four

## Shell Commands

<div dir="rtl" markdown="1">
برای اجرا دستورات CMD یا Terminal از روش زیر استفاده میکنیم.
<div dir="ltr" markdown="1">

```bash
#!/bin/bash
printf "These files are in this folder:\n"
echo "`ls`"
```

>./shell.sh

## Simple Calculator

```bash
# !/bin/bash 
  
echo "Enter Two numbers: "
read a 
read b 
  
echo "Enter Operation: "
read ch 

case $ch in
  +)res=`echo $a + $b | bc` 
  ;; 
  -)res=`echo $a - $b | bc` 
  ;; 
  *)res=`echo $a \* $b | bc` 
  ;; 
esac
echo "Result: $res"
```