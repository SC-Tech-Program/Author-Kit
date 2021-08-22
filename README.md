# Author-Kit

This repository contains materials to help submitting authors of the SC Conference Technical Program.

> **Find answers to Frequently Asked Questions in the [`FAQs`](https://github.com/SC-Tech-Program/FAQs) repository.**

## AD/AE Appendix

Artifact Description (AD) appendices are _required_ of all paper submissions to the SC19 Technical Program.
Artifact Evaluation (AE) appendices are optional but encouraged. 

The AD/AE Appendix will be automatically generated during submission, after the authors respond an online form. 
All authors are encouraged to familiarize themselves with the questions in this form, with plenty of time before sumbission.
See the PDF printout of the online form: [AD-AE-AppendixForm.pdf](https://github.com/SC-Tech-Program/Author-Kit/blob/master/AD-AE-AppendixForm.pdf)

## Reproducibility Resources

**Example script for machine-generated environment data**

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
* [`nvidia-smi`](https://developer.nvidia.com/nvidia-system-management-interface): report characteristics and configuration of NVIDIA GPUs
* [`rocm-smi`] (https://rocmdocs.amd.com/en/latest/ROCm_System_Managment/ROCm-SMI-CLI.html): list of the available AMD GPUs among temperature and other information

There is some redundancy in information provided by the preceding tools, but note that not every tools is available on every system.  The goal is to acquire as much information as possible on as many types of systems as possible.
