# Automated Linux From Scratch Install

More help comes soon!

## Quick Install

```sh
mkdir -pv repo/lfs-10.0
mkdir -v 

# Fetch LFS packages tarball and prepare Filesystem Hierarchy
make lfs-prepare

# Mount Kernel Filesystems and LFS source direcory
sudo make lfs-mount

# Install the FLS toolchain (Pass 1)
make lfs-toolchains

# Conitnue installing the LFS toolchain from chroot (Pass 2)
sudo make lfs-chroot

# Install the entire base system
sudo make lfs-base
```
