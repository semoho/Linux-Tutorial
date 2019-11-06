# Commands  : Series 2

<div dir="rtl" markdown="1">
خلاصه دستور های جلسه سوم :
<div dir="ltr" markdown="1">

* **cat**

* **more**

* **less**

* **grep**

* **su**

* **passwd**

* **redirect or (>>, >)**

* **pipline or ( | )**

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

In order to navigate through the file line by line press Enter key or press Spacebar key to navigate one page at a time, the page being your current terminal screen size. To exit the command just press q key.

A useful option of more command is the -number switch which allows you to set the number of line a page should contain.
Also, you can display a page starting from a specific line number using the +number

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

less command allows you to view the contents of a file and navigate through file. **The main difference between more and less is that less command is faster because it does not load the entire file at once and allows navigation though file using page up/down keys.**

In can be used as a standalone command issued against a file or used with pipes with a multitude of Linux commands in order to narrow their screen output allowing you to scroll through results.


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

#### Diffrence between shadow and passwd Files:

***passwd*** is the file where the user information (like username, user ID, group ID, location of home directory, login shell, ...) is stored when a new user is created.

  * Field 1: Username
    * This contains the user’s login id. This is the username which is used for login.
    * Username uniquely identifies a user on a Linux system. We can’t have multiple users with same username.
  * Field 2 : Password
    * This field contains the encrypted password for the user.
    * Value ‘x’ in this field indicates that the user password is stored in the /etc/shadow file.

  * Field 3 : User-Id
    * User-Id represents a unique number which is used by the Linux to identify the user.
    * There is one to one mapping between the Username and User-Id.
    * Every user must be assigned with a unique UID in a Linux system. This applies to all UIDs but ’0′.
    * The superuser ‘root’ is assigned with a special UID ’0′. Any user having UID ’0′ has root privileges.

  * Field 4 : Group-Id
    * Group-Id represents a unique number identifying the primary group id for the user.
    * Linux maintains the group name and group id mapping in a separate world readable file /etc/group. Following is the entry for GID ’502′ in the group file.

  * Field 5 : User Information
    * This field is used to store the general information about the user, like, user’s full name, contact information etc.
    * This field can be left blank.

  * Field 6 : User’s Home Directory
    * This field contains the location of user’s home directory.
    * User’s home directory contains all user specific configuration files.
    * A user is provided full access to it’s home directory. Which means that the user is free to add, modify and delete any file or folder in its home directory.
  * Field 7 : User’s Shell
    * Shell is the first program that a user encounters after logging into a Linux system. Linux comes with several shells.

***shadow*** is the file where important information (like an encrypted form of the password of a user, the day the password expires, whether or not the passwd has to be changed, the minimum and maximum time between password changes, ...) is stored when a new user is created.

Each line in the /etc/shadow file corresponds to a user account. Each entry is divided in to 9 fields with the help of a delimiter ‘:’.

  * Field 1:
    * contains the username.
  * Field 2:
    * contains the hashed password of the user.
  * Field 3:
    * represents the number of days since the epoch when the * password was changed.
  * Field 4:
    * represents the minimum number of days that must pass since the last password change date before the password can be changed again.
  * Field 5:
    * represents the maximum number of days after the last password change date when the password must be changed again.
  * Field 6:
    * represents the number of days before the accounting expiry date to issue password change warning.
  * Field 7:
    * represents the number of days after password expiry when the account will be locked
  * Field 8:
    * represents the password expiry date in the form of number of days since epoch.
  * Field 9:
    * is reserved for future use

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
