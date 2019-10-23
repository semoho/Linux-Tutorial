## Filesystem Hierarchy Standard

The Filesystem Hierarchy Standard (FHS) defines the directory structure and directory contents in Linux distributions. It is maintained by the Linux Foundation, and the last release of this standard belongs to 2015.


### /
Primary hierarchy root and root directory of the entire file system hierarchy.

### /bin
Essential command binaries that need to be available in single user mode;
for all users, e.g., cat, ls, cp.

### /boot
Boot loader files, e.g., kernels, initrd.

### /dev
Essential device files, e.g., /dev/null.

### /etc
Host-specific system-wide configuration files.
etc is referred to as the etcetera directory, as this directory historically held everything that did not belong elsewhere
  * #### /etc/opt
    Configuration files for add-on packages that are stored in /opt.

  * ### /etc/sgml
  Configuration files, such as catalogs, for software that processes SGML.
  * ### /etc/X11
  Configuration files for the X Window System, version 11.
  * ### /etc/xml
  Configuration files, such as catalogs, for software that processes XML.



### /home
Users' home directories, containing saved files, personal settings, etc.

### /lib
Libraries essential for the binaries in /bin and /sbin.

### /media
Mount points for removable media such as CD-ROMs (appeared in FHS-2.3 in 2004).

### /mnt
Temporarily mounted filesystems.

### /opt
Optional application software packages.

### /proc
Virtual filesystem providing process and kernel information as files.

### /root
Home directory for the root user.

### /run
Run-time variable data: Information about the running system since last boot,
e.g., currently logged-in users and running daemons.
### /sbin
Essential system binaries, e.g., fsck, init, route.

### /sys
Contains information about devices, drivers, and some kernel features.

### /tmp
Temporary files

### /usr
Secondary hierarchy for read-only user data; contains the majority of (multi-)user utilities and applications.

  * ### /usr/bin

  Non-essential command binaries (not needed in single user mode); for all users.

  * ### /usr/include
  Standard include files.
  * ### /usr/lib
  Libraries for the binaries in /usr/bin and /usr/sbin.
  * ### /usr/lib<qual>

  Alternative format libraries, e.g. /usr/lib32 for 32-bit libraries on a 64-bit machine (optional).

  * ### /usr/local

  Tertiary hierarchy for local data, specific to this host. Typically has further subdirectories, e.g., bin, lib, share
  * ### /usr/sbin

  Non-essential system binaries, e.g., daemons for various network-services.

  * ### /usr/share
  Architecture-independent (shared) data.
  * ### /usr/src

  Source code, e.g., the kernel source code with its header files.

  * ### /usr/X11R6

  X Window System, Version 11, Release 6 (up to FHS-2.3, optional).



### /var
Variable files—files whose content is expected to continually change during normal operation of the system.
such as logs, spool files, and temporary e-mail files.

  * ### /var/cache

  Application cache data. Such data are locally generated as a result of time-consuming I/O or calculation. The application must be able to regenerate or restore the data. The cached files can be deleted without loss of data.

  * ### /var/lib

  State information. Persistent data modified by programs as they run, e.g., databases, packaging system metadata, etc.

  * ### /var/lock

  Lock files. Files keeping track of resources currently in use.

  * ### /var/log

  Log files. Various logs.

  * ### /var/mail

  Mailbox files. In some distributions, these files may be located in the deprecated /var/spool/mail.

  * ### /var/opt
  Variable data from add-on packages that are stored in /opt.
  * ### /var/run
  Run-time variable data. This directory contains system information data describing the system since it was booted.[10]

  In FHS 3.0, /var/run is replaced by /run; a system should either continue to provide a /var/run directory, or provide a symbolic link from /var/run to /run, for backwards compatibility.

  * ### /var/spool

  Spool for tasks waiting to be processed, e.g., print queues and outgoing mail queue.

  * ### /var/spool/mail
  Deprecated location for users' mailboxes.
  * ### /var/tmp

  Temporary files to be preserved between reboots.
