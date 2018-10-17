# Author-Kit
**Instructions and templates for SC authors**

In an effort to facilitate preparing the SC Artifact Description appendix, we provide a sample Bash shell script, [`collect_environment.sh`](collect_environment.sh), that queries the operating system for a variety of information.  As written, the script is somewhat Linux-specific, but it should serve to provide ideas for similar scripts that run under other operating systems.  The script should be run on one of the nodes that was used to gather the paper's experimental data (i.e., a compute node, not a head node).

At the time of this writing, `collect_environment.sh` invokes the following commands:

* [`lsb_release`](https://linux.die.net/man/1/lsb_release): report the Linux distribution
* [`uname`](https://linux.die.net/man/1/uname): report the kernel version and base architecture
* [`lscpu`](https://linux.die.net/man/1/lscpu) (or `cat /proc/cpuinfo`): report CPU characteristics
* `cat /proc/meminfo`: report virtual and physical memory capacity
* [`lspci`](https://linux.die.net/man/8/lspci): list all PCI devices
* [`lshw`](https://linux.die.net/man/1/lshw): list all hardware devices
* [`lsblk`](https://linux.die.net/man/8/lsblk): list all block devices
* [`lsscsi`](https://linux.die.net/man/8/lsscsi): list all SCSI devices
* [`env`](https://linux.die.net/man/1/env): list all environment variables currently in use
* [`module list`](https://linux.die.net/man/1/module): list all loaded [Environment Modules](http://modules.sourceforge.net/)

There is some redundancy in information provided by the preceding tools, but note that not every tools is available on every system.  The goal is to acquire as much information as possible on as many types of systems as possible.
