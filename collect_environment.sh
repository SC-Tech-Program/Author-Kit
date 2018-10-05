#! /bin/sh -x
# Linux data-gathering commands; adjust as necessary for your platform.
lsb_release -a
uname -a
lscpu || cat /proc/cpuinfo
cat /proc/meminfo
lspci -v
lshw
lsblk -a
lsscsi -s
env | sort
module list
