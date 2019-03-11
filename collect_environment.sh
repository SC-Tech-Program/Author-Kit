#! /bin/sh -x
# Linux data-gathering commands; adjust as necessary for your platform.
lsb_release -a
uname -a
lscpu || cat /proc/cpuinfo
cat /proc/meminfo
env
inxi -F -c0
lsblk -a
lsscsi -s
module list
nvidia-smi
(lshw -short -quiet -sanitize || lspci) | cat
