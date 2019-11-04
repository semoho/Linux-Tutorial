# Commands  : Series 2

<div dir="rtl" markdown="1">
خلاهصه دستور های جلسه سوم :
<div dir="ltr" markdown="1">

* **cat**

* **more**

* **less**

* **grep**

* **su**

* **passwd**

* **redirect or (>>, >)**

* **pipline or ( | )**

* **passwd**

<div dir="rtl" markdown="1">
  توضیح دستورات به همره مثال :
<div dir="ltr" markdown="1">

## cat

  * Display Contents of File
  * View Contents of Multiple Files in terminal
  * Create a File with Cat Command
  * Use Cat Command with More & Less Options
  * Display Line Numbers in File
  * Display $ at the End of File
  * Display Tab separated Lines in File
  * Use Standard Output with Redirection Operator
  * Appending Standard Output with Redirection Operator
  * Redirecting Standard Input with Redirection Operator
  * Redirecting Multiple Files Contain in a Single File
  * Sorting Contents of Multiple Files in a Single File

```
➜  ~ cat /etc/passwd
root:x:0:0:root:/root:/bin/bash

➜  ~ sudo cat > os_lab.txt
This is a simple test

➜  ~ cat os_lab.txt
This is a simple test

➜  ~ cat -n  os_lab.txt
     1	This is a simple test
     2
➜  ~ cat -e os_lab.txt
This is a simple test$
$
➜  ~ cat -T os_lab.txt
This is a simple test

➜  ~ cat os_lab.txt; cat os_lab_2.txt
This is a simple test

This is second file
➜  ~ sudo cat os_lab_2.txt > os_lab.txt
➜  ~ cat os_lab.txt
This is second file
➜  ~ sudo cat os_lab_2.txt >> os_lab.txt
➜  ~ sudo cat os_lab.txt
This is second file
This is second file
```

## more

view the text files in the command prompt, displaying one screen at a time in case the file is large (For example log files). The more command also allows the user do scroll up and down through the page.

```

➜  ~ ls | more

BabylonDicts
CLionProjects
Desktop
Documents
Downloads
IdeaProjects
jd2
Music
openconnect
os_lab_2.txt
os_lab.txt
PhpstormProjects
Pictures
Public
PycharmProjects
snap
Templates
Videos
➜  ~ ls > os_lab.txt
➜  ~ more +5 os_lab.txt
Documents
Downloads
IdeaProjects
jd2
Music
openconnect
os_lab_2.txt
os_lab.txt
PhpstormProjects
Pictures
Public
PycharmProjects
snap
Templates
Videos


```

## less

 read contents of text file one page(one screen) per time. It has faster access because if file is large, it don’t access complete file, but access it page by page.


```
➜  ~ less /etc/passwd
```

## grep

Grep command in Unix/Linux is the short form of ‘global search for the regular expression’.
The grep command is a filter that is used to search for lines matching a specified pattern and print the matching lines to standard output.

**Syntax :**

```
grep [options] [pattern] [file]
```

```
~ grep "Desktop" os_lab.txt
Desktop
```

## su

changes the current user ID to that of the superuser, or another specified user.
which is short for substitute user or switch user, enables the current user to act as another user during the current login session.

**Syntax :**

```
su [options] [username]
```

If no username is specified, su defaults to becoming the superuser (root).

#### su VS sudo :
sudo runs a single command with root privileges, su launches another shell instance with the privileges of the intended user. Both, sudo and su, are use to grant root privileges to the users in different manners.

## passwd

change the password of a user account. A normal user can run passwd to change their own password, and a system administrator (the superuser) can use passwd to change another user's password, or define how that account's password can be used or changed.

```
➜  ~ passwd
Changing password for alireza.
Current password:
New password:
Retype new password:
passwd: password updated successfully

```

## redirect or (>>, >)

  * ">" : replace new value with previous one
  * ">>" : append new value to previous one
```
➜  ~ cat >> test
Second line.
➜  ~ cat test
First line.
Second Line.
➜  ~ sudo cat > test
Removed pre lines.
➜  ~ cat test       
Removed pre lines.
  ```

## pipline or ( | )

The Pipe is a command in Linux that lets you use two or more commands such that output of one command serves as input to the next. In short, the output of each process directly as input to the next one like a pipeline. The symbol '|' denotes a pipe.

Pipes help you mash-up two or more commands at the same time and run them consecutively. You can use powerful commands which can perform complex tasks in a jiffy.

```
➜  ~ ls | less
BabylonDicts
CLionProjects
Desktop
Documents
Downloads
IdeaProjects
jd2
Music
openconnect
PhpstormProjects
Pictures
Public
PycharmProjects
snap
Templates
test
Videos
~
~
~
~
~
(END)

```
