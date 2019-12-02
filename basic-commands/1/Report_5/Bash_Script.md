# Shell Scripting : Bash Script

<div dir="rtl" markdown="1">
«شل» (Shell) برنامه‌ای در لینوکس و یونیکس است، که می‌توانید در آن دستوراتی را جهت اجرا توسط سیستم وارد کنید. هنگامی که پنجره ترمینال را در لینوکس باز می‌کنید، در واقع برنامه شل اجرا می‌شود، که یک رابط کاربری را برای وارد کردن دستورات در اختیار شما قرار می‌دهد. این رابط کاربری را معمولا با عنوان «خط فرمان» نیز می‌شناسند. وقتی دستوری را در این خط فرمان وارد می‌کنید، توسط شل اجرا شده و نتیجه در صفحه نمایش داده می‌شود.

علاوه بر اینکه می‌توانید دستورات را به صورت تعاملی وارد کرده و اجرا کنید، شل این قابلیت را دارد که دستورات از قبل ذخیره شده در فایل‌ها را اجرا کند. این نوع از اجرا را «اسکریپت‌نویسی شل» می‌نامند.
<div dir="ltr" markdown="1">

## Define a Bash Script File:

* create a file with `.sh` Extention.
* at the beginning of the script must be `#!/bin/bash`
 
 * this line called `shebang`: it tells the shell what program to interpret the script with when executed.
 
 * in here, our interpreter is `bash`
* in the rest of the file, you can write your script, as a simple example : 
```bash
#!/bin/bash
echo 'OSLab'
```

* in the end, to run our script, we must make it executable, so change the permission of file by using `chmod u+x test.sh` command.

* then run it by `./test.sh` and the result is :
```
➜ os_lab ./test.sh 
OSLab
```

## Commenting

`#` -> symbol makes everything after it on a line a comment

## Defining a Variable

There is no data type, it means interpreter defines the type of variable:
```bash
#!/bin/bash
VAR_NAME = "A Simple String!"
VAR_NAME_DIGIT = 1
```

**Special Variables:**

```bash echo $0      # prints the script name

 echo $1      # prints the first argument
 echo $2      # prints the second argument
 echo $9      # prints the ninth argument
 echo $10     # prints the first argument, followed by 0 
 echo ${10}   # prints the tenth argument

 echo $#      # prints the number of arguments
 ```

## Printing
You can get the value of a variable (whatever is stored in it) by calling it with $ in front.
Here is a simple example :
```bash
#!/bin/bash

VAR_NAME="OSLab"

echo $VAR_NAME
echo "$VAR_NAME"
echo "${VAR_NAME}!"
```

output : 
```
➜ os_lab ./test.sh
OSLab
OSLab
OSLab!
➜  os_lab 
```

**Very Important Note: Pay attention to spaces, for example in defining a variable, between `var name` and `= operator` and the `value`, must not be a `space`!**

## Reading from Input

By using from `read` command, you can read from input, and for example assign it to a variable, for example:  

```bash
#!/bin/bash

read VAR_NAME

echo $VAR_NAME
```

output : 
```
➜  os_lab ./test.sh
Alireza Azadi
Alireza Azadi
➜  os_lab 
```

## String Quotes

To use a variable, inside of the other string, we use from `$`, here is a simple example: 

```bash
#!/bin/bash

read VAR_NAME

echo "Hello $VAR_NAME"
```

output : 

```
➜  os_lab ./test.sh
Alireza
Hello Alireza
➜  os_lab 
```

## Shell Execution

To run a terminal command, we can do it in two way, look at this example : 

```bash
#!/bin/bash

echo "I'm in $(pwd)"

echo "I'm in `pwd`"
```

output : 

```
➜  os_lab ./test.sh
I'm in /home/alireza/Desktop/os_lab
I'm in /home/alireza/Desktop/os_lab
➜  os_lab 
```