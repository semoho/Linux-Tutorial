### ls

	Displays a list of files in the current working directory, like the dir command in DOS

- -l long format, displaying Unix file types, permissions, number of hard links, owner, group, size, last-modified date and filename
- -a lists all files in the given directory, including those whose names start with "." (which are hidden files in Unix). By default, these files are excluded from the list.
- -R recursively lists subdirectories. The command ls -R / would therefore list all files.
- -h ls With combination of -lh option, shows sizes in human readable format.

```
smh@smh-Vostro1510:~/public/git/linux$ ls -alh
total 20K
drwxrwxr-x 3 smh smh 4.0K سپتام 28 18:51 .
drwxrwxr-x 3 smh smh 4.0K سپتام 24 19:53 ..
drwxrwxr-x 8 smh smh 4.0K سپتام 24 20:10 .git
-rw-rw-r-- 1 smh smh  739 سپتام 28 18:59 Lab-Basic Command (1)
-rw-rw-r-- 1 smh smh  383 سپتام 28 18:52 README.md

```