### Filesystem Hierarchy Standard

The Filesystem Hierarchy Standard (FHS) defines the directory structure and directory contents in Linux distributions. It is maintained by the Linux Foundation.

```
/
Primary hierarchy root and root directory of the entire file system hierarchy.

/bin
Essential command binaries that need to be available in single user mode;
for all users, e.g., cat, ls, cp.

/boot
Boot loader files, e.g., kernels, initrd.

/dev
Essential device files, e.g., /dev/null.

/etc
Host-specific system-wide configuration files.
etc is referred to as the etcetera directory, as this directory historically held everything that did not belong elsewhere 

/home
Users' home directories, containing saved files, personal settings, etc.

/lib
Libraries essential for the binaries in /bin and /sbin.

/media
Mount points for removable media such as CD-ROMs (appeared in FHS-2.3 in 2004).

/mnt
Temporarily mounted filesystems.

/opt
Optional application software packages.

/proc
Virtual filesystem providing process and kernel information as files.

/root
Home directory for the root user.

/run
Run-time variable data: Information about the running system since last boot,
e.g., currently logged-in users and running daemons.

/sys
Contains information about devices, drivers, and some kernel features.

/tmp
Temporary files

/usr
Secondary hierarchy for read-only user data; contains the majority of (multi-)user utilities and applications.

/var
Variable files—files whose content is expected to continually change during normal operation of the system.
such as logs, spool files, and temporary e-mail files.

```