MAKEJOBS:=-j $(shell nproc)
SHELL=/bin/bash

LFS=$(realpath lfs)/
LFS_TGT=$(shell uname -m)-lfs-linux-gnu
LFS_REPO=repo/lfs-10.0/
LFS_BACKUP_BASE=$(LFS_REPO)lfs-base-10.0.tar.xz
LFS_BACKUP_CHROOT=$(LFS_REPO)lfs-chroot-tools-10.0.tar.xz
LFS_PACKAGES_URL=http://ftp.osuosl.org/pub/lfs/lfs-packages/lfs-packages-10.0.tar

LFS_SOURCES_BINUTILS=$(LFS)sources/binutils-2.35.tar.xz
LFS_SOURCES_GCC=$(LFS)sources/gcc-10.2.0.tar.xz
LFS_SOURCES_MPFR=$(LFS)sources/mpfr-4.1.0.tar.xz
LFS_SOURCES_GMP=$(LFS)sources/gmp-6.2.0.tar.xz
LFS_SOURCES_MPC=$(LFS)sources/mpc-1.1.0.tar.gz
LFS_SOURCES_LINUX=$(LFS)sources/linux-5.8.3.tar.xz
LFS_SOURCES_GLIBC=$(LFS)sources/glibc-2.32.tar.xz
LFS_SOURCES_GLIBC_PATCH=$(LFS)sources/glibc-2.32-fhs-1.patch
LFS_SOURCES_M4=$(LFS)sources/m4-1.4.18.tar.xz
LFS_SOURCES_NCURSES=$(LFS)sources/ncurses-6.2.tar.gz
LFS_SOURCES_BASH=$(LFS)sources/bash-5.0.tar.gz
LFS_SOURCES_BASH_PATCH=$(LFS)sources/bash-5.0-upstream_fixes-1.patch
LFS_SOURCES_COREUTILS=$(LFS)sources/coreutils-8.32.tar.xz
LFS_SOURCES_COREUTILS_PATCH=$(LFS)sources/coreutils-8.32-i18n-1.patch
LFS_SOURCES_DIFFUTILS=$(LFS)sources/diffutils-3.7.tar.xz
LFS_SOURCES_FILE=$(LFS)sources/file-5.39.tar.gz
LFS_SOURCES_FINDUTILS=$(LFS)sources/findutils-4.7.0.tar.xz
LFS_SOURCES_GAWK=$(LFS)sources/gawk-5.1.0.tar.xz
LFS_SOURCES_GREP=$(LFS)sources/grep-3.4.tar.xz
LFS_SOURCES_GZIP=$(LFS)sources/gzip-1.10.tar.xz
LFS_SOURCES_MAKE=$(LFS)sources/make-4.3.tar.gz
LFS_SOURCES_PATCH=$(LFS)sources/patch-2.7.6.tar.xz
LFS_SOURCES_SED=$(LFS)sources/sed-4.8.tar.xz
LFS_SOURCES_TAR=$(LFS)sources/tar-1.32.tar.xz
LFS_SOURCES_XZ=$(LFS)sources/xz-5.2.5.tar.xz
LFS_SOURCES_GETTEXT=$(LFS)sources/gettext-0.21.tar.xz
LFS_SOURCES_BISON=$(LFS)sources/bison-3.7.1.tar.xz
LFS_SOURCES_PERL=$(LFS)sources/perl-5.32.0.tar.xz
LFS_SOURCES_PYTHON=$(LFS)sources/Python-3.8.5.tar.xz
LFS_SOURCES_TEXINFO=$(LFS)sources/texinfo-6.7.tar.xz
LFS_SOURCES_UTIL_LINUX=$(LFS)sources/util-linux-2.36.tar.xz
LFS_SOURCES_MAN_PAGES=$(LFS)sources/man-pages-5.08.tar.xz
LFS_SOURCES_IANA_ETC=$(LFS)sources/iana-etc-20200821.tar.gz
LFS_SOURCES_ZLIB=$(LFS)sources/zlib-1.2.11.tar.xz
LFS_SOURCES_BZIP2=$(LFS)sources/bzip2-1.0.8.tar.gz
LFS_SOURCES_ZSTD=$(LFS)sources/zstd-1.4.5.tar.gz
LFS_SOURCES_READLINE=$(LFS)sources/readline-8.0.tar.gz
LFS_SOURCES_BC=$(LFS)sources/bc-3.1.5.tar.xz
LFS_SOURCES_FLEX=$(LFS)sources/flex-2.6.4.tar.gz
LFS_SOURCES_ATTR=$(LFS)sources/attr-2.4.48.tar.gz
LFS_SOURCES_ACL=$(LFS)sources/acl-2.2.53.tar.gz
LFS_SOURCES_LIBCAP=$(LFS)sources/libcap-2.42.tar.xz
LFS_SOURCES_SHADOW=$(LFS)sources/shadow-4.8.1.tar.xz
LFS_SOURCES_PKG_CONFIG=$(LFS)sources/pkg-config-0.29.2.tar.gz
LFS_SOURCES_PSMISC=$(LFS)sources/psmisc-23.3.tar.xz
LFS_SOURCES_LIBTOOL=$(LFS)sources/libtool-2.4.6.tar.xz
LFS_SOURCES_GDBM=$(LFS)sources/gdbm-1.18.1.tar.gz
LFS_SOURCES_GPERF=$(LFS)sources/gperf-3.1.tar.gz
LFS_SOURCES_EXPAT=$(LFS)sources/expat-2.2.9.tar.xz
LFS_SOURCES_INETUTILS=$(LFS)sources/inetutils-1.9.4.tar.xz
LFS_SOURCES_XML_PARSER=$(LFS)sources/XML-Parser-2.46.tar.gz
LFS_SOURCES_INTLTOOL=$(LFS)sources/intltool-0.51.0.tar.gz
LFS_SOURCES_AUTOCONF=$(LFS)sources/autoconf-2.69.tar.xz
LFS_SOURCES_AUTOMAKE=$(LFS)sources/automake-1.16.2.tar.xz
LFS_SOURCES_KMOD=$(LFS)sources/kmod-27.tar.xz
LFS_SOURCES_ELFUTILS=$(LFS)sources/elfutils-0.180.tar.bz2
LFS_SOURCES_LIBFFI=$(LFS)sources/libffi-3.3.tar.gz
LFS_SOURCES_OPENSSL=$(LFS)sources/openssl-1.1.1g.tar.gz
LFS_SOURCES_NINJA=$(LFS)sources/ninja-1.10.0.tar.gz
LFS_SOURCES_MESON=$(LFS)sources/meson-0.55.0.tar.gz
LFS_SOURCES_CHECK=$(LFS)sources/check-0.15.2.tar.gz
LFS_SOURCES_GROF=$(LFS)sources/groff-1.22.4.tar.gz
LFS_SOURCES_GRUB=$(LFS)sources/grub-2.04.tar.xz
LFS_SOURCES_LESS=$(LFS)sources/less-551.tar.gz
LFS_SOURCES_IPROUTE2=$(LFS)sources/iproute2-5.8.0.tar.xz
LFS_SOURCES_KBD=$(LFS)sources/kbd-2.3.0.tar.xz
LFS_SOURCES_KBD_PATCH=$(LFS)sources/kbd-2.3.0-backspace-1.patchkbd-2.3.0.tar.xz
LFS_SOURCES_LIBPIPELINE=$(LFS)sources/libpipeline-1.5.3.tar.gz
LFS_SOURCES_MAN_DB=$(LFS)sources/man-db-2.9.3.tar.xz
LFS_SOURCES_VIM=$(LFS)sources/vim-8.2.1361.tar.gz
LFS_SOURCES_EUDEV=$(LFS)sources/eudev-3.2.9.tar.gz
LFS_SOURCES_PROCPS_NG=$(LFS)sources/procps-ng-3.3.16.tar.xz
LFS_SOURCES_E2FSPROGS=$(LFS)sources/e2fsprogs-1.45.6.tar.gz
LFS_SOURCES_SYSKLOGD=$(LFS)sources/sysklogd-1.5.1.tar.gz
LFS_SOURCES_SYSVINIT=$(LFS)sources/sysvinit-2.97.tar.xz
LFS_SOURCES_SYSVINIT_PATCH=$(LFS)sources/sysvinit-2.97-consolidated-1.patch
LFS_SOURCES_BOOTSCRIPTS=$(LFS)sources/lfs-bootscripts-20200818.tar.xz

export PATH := /usr/bin:/bin:/usr/sbin:/sbin:$(LFS)tools/bin/

lfs-regular-user:
	[[ $$(id -u)  -ne 0 ]]

lfs-root-user:
	[[ $$(id -u)  -eq 0 ]]

lfs-mount: lfs-root-user
	mountpoint $(LFS)dev || mount -v --bind /dev $(LFS)dev
	mountpoint $(LFS)dev/pts || mount -v --bind /dev/pts $(LFS)dev/pts
	mountpoint $(LFS)proc || mount -vt proc proc $(LFS)proc
	mountpoint $(LFS)sys || mount -vt sysfs sysfs $(LFS)sys
	mountpoint $(LFS)run || mount -vt tmpfs tmpfs $(LFS)run
	mountpoint $(LFS)sources || mount --bind $(LFS_REPO) $(LFS)sources

lfs-umount: lfs-root-user
	[[ ! $$(mountpoint $(LFS)dev/pts) ]] || umount $(LFS)dev/pts
	[[ ! $$(mountpoint $(LFS)dev) ]] || umount $(LFS)dev
	[[ ! $$(mountpoint $(LFS)sys) ]] || umount $(LFS)sys
	[[ ! $$(mountpoint $(LFS)proc) ]] || umount $(LFS)proc
	[[ ! $$(mountpoint $(LFS)run) ]] || umount $(LFS)run
	[[ ! $$(mountpoint $(LFS)sources/) ]] || umount $(LFS)sources/

lfs-prepare-hierarchy:
	mkdir -pv $(LFS)bin $(LFS)etc $(LFS)lib $(LFS)sbin $(LFS)usr $(LFS)var
	mkdir -pv $(LFS)dev $(LFS)sys $(LFS)proc $(LFS)run
	mkdir -pv $(LFS)sources $(LFS)tools
ifeq ($(shell uname -m),x86_64)
	mkdir -pv $(LFS)lib64
endif

lfs-prepare-packages:
	[ -f $(LFS_REPO)$$(basename $(LFS_PACKAGES_URL)) ] || \
	    (cd $(LFS_REPO) && axel -an 20 $(LFS_PACKAGES_URL))
	find $(LFS_REPO) ! -path $(LFS_REPO) -type d -maxdepth 1 -exec rm -rf {} \;
	tar -xC $(LFS_REPO) --strip-components=1 -f $(LFS_REPO)$$(basename $(LFS_PACKAGES_URL))
	(cd $(LFS_REPO) && md5sum -c md5sums)

# 5.2. Binutils-2.35 - Pass 1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter05/binutils-pass1.html
lfs-toolchains-binutils-pass1: lfs-regular-user
	[ -d $(LFS)sources/binutils ] || \
	    (mkdir -pv $(LFS)sources/binutils && tar -xC $(LFS)sources/binutils --strip-components=1 -f $(LFS_SOURCES_BINUTILS))
	rm -rf $(LFS)sources/binutils/build
	mkdir -pv $(LFS)sources/binutils/build
	cd $(LFS)sources/binutils/build && \
	../configure --prefix=$(LFS)tools/ \
	             --with-sysroot=$(LFS) \
	             --target=$(LFS_TGT) \
	             --disable-nls \
	             --disable-werror
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/binutils/build 
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/binutils/build install

# 5.3. GCC-10.2.0 - Pass 1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter05/gcc-pass1.html
lfs-toolchains-gcc-pass1: lfs-regular-user
	[ -d $(LFS)sources/gcc ] || \
	    (mkdir $(LFS)sources/gcc; tar -xC $(LFS)sources/gcc --strip-components=1 -f $(LFS_SOURCES_GCC))
	[ -d $(LFS)sources/gcc/mpfr ] || \
	    (mkdir $(LFS)sources/gcc/mpfr; tar -xC $(LFS)sources/gcc/mpfr --strip-components=1 -f $(LFS_SOURCES_MPFR))
	[ -d $(LFS)sources/gcc/gmp ] || \
	    (mkdir $(LFS)sources/gcc/gmp; tar -xC $(LFS)sources/gcc/gmp --strip-components=1 -f $(LFS_SOURCES_GMP))
	[ -d $(LFS)sources/gcc/mpc ] || \
	    (mkdir $(LFS)sources/gcc/mpc; tar -xC $(LFS)sources/gcc/mpc --strip-components=1 -f $(LFS_SOURCES_MPC))
ifeq ($(shell uname -m),x86_64)
	sed -e '/m64=/s/lib64/lib/' -i'.orig' $(LFS)sources/gcc/gcc/config/i386/t-linux64
endif
	rm -rf $(LFS)sources/gcc/build
	mkdir -pv $(LFS)sources/gcc/build
	cd $(LFS)sources/gcc/build && \
	../configure --target=$(LFS_TGT)                              \
	             --prefix=$(LFS)tools/                           \
	             --with-glibc-version=2.11                      \
	             --with-sysroot=$(LFS)                            \
	             --with-newlib                                  \
	             --without-headers                              \
	             --enable-initfini-array                        \
	             --disable-nls                                  \
	             --disable-shared                               \
	             --disable-multilib                             \
	             --disable-decimal-float                        \
	             --disable-threads                              \
	             --disable-libatomic                            \
	             --disable-libgomp                              \
	             --disable-libquadmath                          \
	             --disable-libssp                               \
	             --disable-libvtv                               \
	             --disable-libstdcxx                            \
	             --enable-languages=c,c++
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gcc/build
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gcc/build install
	cat $(LFS)sources/gcc/gcc/limitx.h $(LFS)sources/gcc/gcc/glimits.h $(LFS)sources/gcc/gcc/limity.h > \
	$$(dirname $$($(LFS)tools/bin/$(LFS_TGT)-gcc -print-libgcc-file-name))/install-tools/include/limits.h

# 5.4. Linux-5.8.3 API Headers
# http://www.linuxfromscratch.org/lfs/view/stable/chapter05/linux-headers.html
lfs-toolchains-linux-api: lfs-regular-user
	[ -d $(LFS)sources/linux ] || \
	    (mkdir $(LFS)sources/linux; tar -xC $(LFS)sources/linux --strip-components=1 -f $(LFS_SOURCES_LINUX))
	make -C $(LFS)sources/linux mrproper
	make -C $(LFS)sources/linux headers
	find $(LFS)sources/linux/usr/include -name '.*' -delete
	rm $(LFS)sources/linux/usr/include/Makefile
	cp -rv $(LFS)sources/linux/usr/include $(LFS)/usr

# 5.5. Glibc-2.32
# http://www.linuxfromscratch.org/lfs/view/development/chapter05/glibc.html
lfs-toolchains-glibc: lfs-regular-user
	[ -d $(LFS)sources/glibc ] || \
	    (mkdir $(LFS)sources/glibc; tar -xC $(LFS)sources/glibc --strip-components=1 -f $(LFS_SOURCES_GLIBC))
ifeq ($(shell uname -m),x86_64)
	cd $(LFS)lib64 && ln -svf ../lib/ld-linux-x86-64.so.2 ld-linux-x86-64.so.2
	cd $(LFS)lib64 && ln -svf ../lib/ld-linux-x86-64.so.2 ld-lsb-x86-64.so.3
endif
	cd $(LFS)sources/glibc && patch -Np1 -i $(LFS_SOURCES_GLIBC_PATCH)
	rm -rf $(LFS)sources/glibc/build
	mkdir -pv $(LFS)sources/glibc/build
	cd $(LFS)sources/glibc/build && \
	../configure --prefix=/usr \
	             --host=$(LFS_TGT) \
	             --build=$$(../scripts/config.guess) \
	             --enable-kernel=3.2 \
	             --with-headers=$(LFS)usr/include \
	             libc_cv_slibdir=/lib
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/glibc/build
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/glibc/build DESTDIR=$(LFS) install
	# glibc check
	echo 'int main(){}' > dummy.c
	$(LFS)tools/bin/$(LFS_TGT)-gcc dummy.c
	readelf -l a.out | grep '/ld-linux'
	rm -v dummy.c a.out
	# finalize the installation of the limits.h headers
	$(LFS)/tools/libexec/gcc/$(LFS_TGT)/10.2.0/install-tools/mkheaders

# 5.6. Libstdc++ from GCC-10.2.0, Pass 1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter05/gcc-libstdc++-pass1.html
lfs-toolchains-libstdcpp-pass1: lfs-regular-user
	mkdir -pv $(LFS)sources/gcc/build
	cd $(LFS)sources/gcc/build && \
	PATH=$$PATH:$(LFS)tools/bin/; \
	../libstdc++-v3/configure --host=$(LFS_TGT) \
	                          --build=$$(../config.guess) \
	                          --prefix=/usr \
	                          --disable-multilib \
	                          --disable-nls \
	                          --disable-libstdcxx-pch \
	                          --with-gxx-include-dir=/tools/$(LFS_TGT)/include/c++/10.2.0
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gcc/build
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gcc/build DESTDIR=$(LFS) install

# 6.2. M4-1.4.18
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/m4.html
lfs-toolchains-m4: lfs-regular-user
	[ -d $(LFS)sources/m4 ] || \
	    (mkdir $(LFS)sources/m4; tar -xC $(LFS)sources/m4 --strip-components=1 -f $(LFS_SOURCES_M4))
	[ -f $(LFS)sources/m4/lib.orig ] || \
	    (cp -r $(LFS)sources/m4/lib $(LFS)sources/m4/lib.orig; sed -i 's/IO_ftrylockfile/IO_EOF_SEEN/' $(LFS)sources/m4/lib/*.c; echo "#define _IO_IN_BACKUP 0x100" >> $(LFS)sources/m4/lib/stdio-impl.h)
	cd $(LFS)sources/m4 && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --build=$$(build-aux/config.guess)
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/m4
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/m4 DESTDIR=$(LFS) install

# 6.3. Ncurses-6.2
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/ncurses.html
lfs-toolchains-ncurses: lfs-regular-user
	[ -d $(LFS)sources/ncurses ] || \
	    (mkdir $(LFS)sources/ncurses; tar -xC $(LFS)sources/ncurses --strip-components=1 -f $(LFS_SOURCES_NCURSES))
	sed -i s/mawk// $(LFS)sources/ncurses/configure || true
	mkdir -pv $(LFS)sources/ncurses/build
	cd $(LFS)sources/ncurses/build && ../configure
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/ncurses/build/include
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/ncurses/build/progs tic
	cd $(LFS)sources/ncurses && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --build=$$(./config.guess) \
	            --mandir=/usr/share/man \
	            --with-manpage-format=normal \
	            --with-shared \
	            --without-debug \
	            --without-ada \
	            --without-normal \
	            --enable-widec
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/ncurses
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/ncurses DESTDIR=$(LFS) TIC_PATH=$(LFS)sources/ncurses/build/progs/tic install
	echo "INPUT(-lncursesw)" > $(LFS)/usr/lib/libncurses.so
	mv -v $(LFS)/usr/lib/libncursesw.so.6* $(LFS)/lib
	cd $(LFS)usr/lib && ln -sfv ../../lib/$$(readlink $(LFS)usr/lib/libncursesw.so) libncursesw.so

# 6.4. Bash-5.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/bash.html
lfs-toolchains-bash: lfs-regular-user
	[ -d $(LFS)sources/bash ] || \
	    (mkdir $(LFS)sources/bash; tar -xC $(LFS)sources/bash --strip-components=1 -f $(LFS_SOURCES_BASH))
	cd $(LFS)sources/bash && \
	./configure --prefix=/usr \
            --build=$$(support/config.guess) \
            --host=$(LFS_TGT) \
            --without-bash-malloc
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/bash
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/bash DESTDIR=$(LFS) install
	mv $(LFS)usr/bin/bash $(LFS)bin/bash
	cd $(LFS)bin && ln -sv bash sh

# 6.5. Coreutils-8.32
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/coreutils.html
lfs-toolchains-coreutils: lfs-regular-user
	[ -d $(LFS)sources/coreutils ] || \
	    (mkdir $(LFS)sources/coreutils; tar -xC $(LFS)sources/coreutils --strip-components=1 -f $(LFS_SOURCES_COREUTILS))
	cd $(LFS)sources/coreutils && \
	./configure --prefix=/usr                     \
	            --host=$(LFS_TGT)                   \
	            --build=$$(build-aux/config.guess) \
	            --enable-install-program=hostname \
	            --enable-no-install-program=kill,uptime
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/coreutils
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/coreutils DESTDIR=$(LFS) install
	mv -v $(LFS)usr/bin/{cat,chgrp,chmod,chown,cp,date,dd,df,echo} $(LFS)bin
	mv -v $(LFS)usr/bin/{false,ln,ls,mkdir,mknod,mv,pwd,rm} $(LFS)bin
	mv -v $(LFS)usr/bin/{rmdir,stty,sync,true,uname} $(LFS)bin
	mv -v $(LFS)usr/bin/{head,nice,sleep,touch} $(LFS)bin
	mv -v $(LFS)usr/bin/chroot $(LFS)usr/sbin
	mkdir -pv $(LFS)usr/share/man/man8
	mv -v $(LFS)usr/share/man/man1/chroot.1 $(LFS)usr/share/man/man8/chroot.8
	sed -i 's/"1"/"8"/' $(LFS)usr/share/man/man8/chroot.8

# 6.6. Diffutils-3.7
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/diffutils.html
lfs-toolchains-diffutils: lfs-regular-user
	[ -d $(LFS)sources/diffutils ] || \
	    (mkdir $(LFS)sources/diffutils; tar -xC $(LFS)sources/diffutils --strip-components=1 -f $(LFS_SOURCES_DIFFUTILS))
	cd $(LFS)sources/diffutils && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT)
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/diffutils
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/diffutils DESTDIR=$(LFS) install

# 6.7. File-5.39
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/file.html
lfs-toolchains-file: lfs-regular-user
	[ -d $(LFS)sources/file ] || \
	    (mkdir $(LFS)sources/file; tar -xC $(LFS)sources/file --strip-components=1 -f $(LFS_SOURCES_FILE))
	cd $(LFS)sources/file && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT)
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/file
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/file DESTDIR=$(LFS) install

# 6.8. Findutils-4.7.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/findutils.html
lfs-toolchains-findutils: lfs-regular-user
	[ -d $(LFS)sources/findutils ] || \
	    (mkdir $(LFS)sources/findutils; tar -xC $(LFS)sources/findutils --strip-components=1 -f $(LFS_SOURCES_FINDUTILS))
	cd $(LFS)sources/findutils && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --build=$$(build-aux/config.guess)
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/findutils
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/findutils DESTDIR=$(LFS) install
	mv -v $(LFS)usr/bin/find $(LFS)bin
	sed -i 's|find:=$${BINDIR}|find:=/bin|' $(LFS)usr/bin/updatedb

# 6.9. Gawk-5.1.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/gawk.html
lfs-toolchains-gawk: lfs-regular-user
	[ -d $(LFS)sources/gawk ] || \
	    (mkdir $(LFS)sources/gawk; tar -xC $(LFS)sources/gawk --strip-components=1 -f $(LFS_SOURCES_GAWK))
	sed -i 's/extras//' $(LFS)sources/gawk/Makefile.in
	cd $(LFS)sources/gawk && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --build=$$(./config.guess)
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gawk
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gawk DESTDIR=$(LFS) install

# 6.10. Grep-3.4
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/grep.html
lfs-toolchains-grep: lfs-regular-user
	[ -d $(LFS)sources/grep ] || \
	    (mkdir $(LFS)sources/grep; tar -xC $(LFS)sources/grep --strip-components=1 -f $(LFS_SOURCES_GREP))
	cd $(LFS)sources/grep && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --bindir=/bin
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/grep
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/grep DESTDIR=$(LFS) install

# 6.11. Gzip-1.10
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/gzip.html
lfs-toolchains-gzip: lfs-regular-user
	[ -d $(LFS)sources/gzip ] || \
	    (mkdir $(LFS)sources/gzip; tar -xC $(LFS)sources/gzip --strip-components=1 -f $(LFS_SOURCES_GZIP))
	cd $(LFS)sources/gzip && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT)
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gzip
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gzip DESTDIR=$(LFS) install
	mv -v $(LFS)usr/bin/gzip $(LFS)bin

# 6.12 Make-4.3
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/gzip.html
lfs-toolchains-make: lfs-regular-user
	[ -d $(LFS)sources/make ] || \
	    (mkdir $(LFS)sources/make; tar -xC $(LFS)sources/make --strip-components=1 -f $(LFS_SOURCES_MAKE))
	cd $(LFS)sources/make && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --without-guile \
	            --build=$$(build-aux/config.guess)
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/make
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/make DESTDIR=$(LFS) install

# 6.13. Patch-2.7.6
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/patch.html
lfs-toolchains-patch: lfs-regular-user
	[ -d $(LFS)sources/patch ] || \
	    (mkdir $(LFS)sources/patch; tar -xC $(LFS)sources/patch --strip-components=1 -f $(LFS_SOURCES_PATCH))
	cd $(LFS)sources/patch && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --build=$$(build-aux/config.guess)
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/patch
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/patch DESTDIR=$(LFS) install

# 6.14. Sed-4.8
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/sed.html
lfs-toolchains-sed: lfs-regular-user
	[ -d $(LFS)sources/sed ] || \
	    (mkdir $(LFS)sources/sed; tar -xC $(LFS)sources/sed --strip-components=1 -f $(LFS_SOURCES_SED))
	cd $(LFS)sources/sed && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --bindir=/bin
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/sed
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/sed DESTDIR=$(LFS) install

# 6.15. Tar-1.32
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/tar.html
lfs-toolchains-tar: lfs-regular-user
	[ -d $(LFS)sources/tar ] || \
	    (mkdir $(LFS)sources/tar; tar -xC $(LFS)sources/tar --strip-components=1 -f $(LFS_SOURCES_TAR))
	cd $(LFS)sources/tar && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT) \
	            --build=$$(build-aux/config.guess) \
	            --bindir=/bin
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/tar
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/tar DESTDIR=$(LFS) install

# 6.16. Xz-5.2.5
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/xz.html
lfs-toolchains-xz: lfs-regular-user
	[ -d $(LFS)sources/xz ] || \
	    (mkdir $(LFS)sources/xz; tar -xC $(LFS)sources/xz --strip-components=1 -f $(LFS_SOURCES_XZ))
	cd $(LFS)sources/xz && \
	./configure --prefix=/usr \
	            --host=$(LFS_TGT)                  \
	            --build=$$(build-aux/config.guess) \
	            --disable-static                  \
	            --docdir=/usr/share/doc/xz-5.2.5
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/xz
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/xz DESTDIR=$(LFS) install
	mv -v $(LFS)usr/bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} $(LFS)bin
	mv -v $(LFS)usr/lib/liblzma.so.* $(LFS)lib
	cd $(LFS)usr/lib/ && ln -svf ../../lib/$$(readlink liblzma.so) liblzma.so

# 6.17. Binutils-2.35 - Pass 2
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/binutils-pass2.html
lfs-toolchains-binutils-pass2: lfs-regular-user
	[ -d $(LFS)sources/binutils ] || \
	    (mkdir -pv $(LFS)sources/binutils && tar -xvC $(LFS)sources/binutils --strip-components=1 -f $(LFS_SOURCES_BINUTILS))
	# Clean previous build
	rm -rf $(LFS)sources/binutils/build
	mkdir -pv $(LFS)sources/binutils/build
	cd $(LFS)sources/binutils/build && \
	../configure --prefix=/usr             \
	             --build=$$(../config.guess) \
	             --host=$(LFS_TGT)          \
	             --disable-nls              \
	             --enable-shared            \
	             --disable-werror           \
	             --enable-64-bit-bfd
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/binutils/build
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/binutils/build DESTDIR=$(LFS) install

# 6.18. GCC-10.2.0 - Pass 2
# http://www.linuxfromscratch.org/lfs/view/stable/chapter06/gcc-pass2.html
lfs-toolchains-gcc-pass2: lfs-regular-user
	[ -d $(LFS)sources/gcc ] || \
	    (mkdir $(LFS)sources/gcc; tar -xC $(LFS)sources/gcc --strip-components=1 -f $(LFS_SOURCES_GCC))
	[ -d $(LFS)sources/gcc/mpfr ] || \
	    (mkdir $(LFS)sources/gcc/mpfr; tar -xC $(LFS)sources/gcc/mpfr --strip-components=1 -f $(LFS_SOURCES_MPFR))
	[ -d $(LFS)sources/gcc/gmp ] || \
	    (mkdir $(LFS)sources/gcc/gmp; tar -xC $(LFS)sources/gcc/gmp --strip-components=1 -f $(LFS_SOURCES_GMP))
	[ -d $(LFS)sources/gcc/mpc ] || \
	    (mkdir $(LFS)sources/gcc/mpc; tar -xC $(LFS)sources/gcc/mpc --strip-components=1 -f $(LFS_SOURCES_MPC))
ifeq ($(shell uname -m),x86_64)
	[ -f $(LFS)sources/gcc/gcc/config/i386/t-linux64.orig ] || \
	sed -e '/m64=/s/lib64/lib/' -i.orig $(LFS)sources/gcc/gcc/config/i386/t-linux64
endif
	rm -rf $(LFS)sources/gcc/build
	mkdir -pv $(LFS)sources/gcc/build/$(LFS_TGT)/libgcc
	cd $(LFS)sources/gcc/build && \
	ln -s ../../../libgcc/gthr-posix.h $(LFS_TGT)/libgcc/gthr-default.h
	cd $(LFS)sources/gcc/build && \
	../configure --build=$$(../config.guess)                     \
	             --host=$(LFS_TGT)                                \
	             --prefix=/usr                                  \
	             CC_FOR_TARGET=$(LFS_TGT)-gcc                     \
	             --with-build-sysroot=$(LFS)                      \
	             --enable-initfini-array                        \
	             --disable-nls                                  \
	             --disable-multilib                             \
	             --disable-decimal-float                        \
	             --disable-libatomic                            \
	             --disable-libgomp                              \
	             --disable-libquadmath                          \
	             --disable-libssp                               \
	             --disable-libvtv                               \
	             --disable-libstdcxx                            \
	             --enable-languages=c,c++
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gcc/build
	$(MAKE) $(MAKEJOBS) -C $(LFS)sources/gcc/build DESTDIR=$(LFS) install
	cd $(LFS)usr/bin && ln -svf gcc cc

# 7.3 preparing Virtual Kernel File Systems
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/kernfs.html
lfs-chroot-prepare: lfs-mount
	chown -R root:root $(LFS){usr,lib,var,etc,bin,sbin,tools}
ifeq ($(shell uname -m),x86_64)
	chown -R root:root $(LFS)lib64
endif
	[ -c $(LFS)dev/console ] || mknod -m 600 $(LFS)dev/console c 5 1
	[ -c $(LFS)dev/null ] || mknod -m 666 $(LFS)dev/null c 1 3

# 7.5. Creating Directories
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/creatingdirs.html
define CHROOT_SH_DIRECTORIES
set -e
mkdir -pv /{boot,home,mnt,opt,srv}
mkdir -pv /etc/{opt,sysconfig}
mkdir -pv /lib/firmware
mkdir -pv /media/{floppy,cdrom}
mkdir -pv /usr/{,local/}{bin,include,lib,sbin,src}
mkdir -pv /usr/{,local/}share/{color,dict,doc,info,locale,man}
mkdir -pv /usr/{,local/}share/{misc,terminfo,zoneinfo}
mkdir -pv /usr/{,local/}share/man/man{1..8}
mkdir -pv /var/{cache,local,log,mail,opt,spool}
mkdir -pv /var/lib/{color,misc,locate}

ln -sfv /run /var/run
ln -sfv /run/lock /var/lock

install -dv -m 0750 /root
install -dv -m 1777 /tmp /var/tmp
endef
export CHROOT_SH_DIRECTORIES
lfs-chroot-directories:
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_DIRECTORIES"

# 7.6. Creating Essential Files and Symlinks
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/createfiles.html
define CHROOT_SH_ESSENTIAL_FILES
set -e
ln -sv /proc/self/mounts /etc/mtab
echo "127.0.0.1 localhost" > /etc/hosts
#
cat > /etc/passwd << EOF
root:x:0:0:root:/root:/bin/bash
bin:x:1:1:bin:/dev/null:/bin/false
daemon:x:6:6:Daemon User:/dev/null:/bin/false
messagebus:x:18:18:D-Bus Message Daemon User:/var/run/dbus:/bin/false
nobody:x:99:99:Unprivileged User:/dev/null:/bin/false
EOF
#
cat > /etc/group << EOF
root:x:0:
bin:x:1:daemon
sys:x:2:
kmem:x:3:
tape:x:4:
tty:x:5:
daemon:x:6:
floppy:x:7:
disk:x:8:
lp:x:9:
dialout:x:10:
audio:x:11:
video:x:12:
utmp:x:13:
usb:x:14:
cdrom:x:15:
adm:x:16:
messagebus:x:18:
input:x:24:
mail:x:34:
kvm:x:61:
wheel:x:97:
nogroup:x:99:
users:x:999:
EOF
#
#echo "tester:x:$(ls -n $(tty) | cut -d" " -f3):101::/home/tester:/bin/bash" >> /etc/passwd
#echo "tester:x:101:" >> /etc/group
#install -o tester -d /home/tester
# 
touch /var/log/{btmp,lastlog,faillog,wtmp}
chgrp -v utmp /var/log/lastlog
chmod -v 664  /var/log/lastlog
chmod -v 600  /var/log/btmp
endef
export CHROOT_SH_ESSENTIAL_FILES
lfs-chroot-essential-files:
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_ESSENTIAL_FILES"

# 7.7. Libstdc++ from GCC-10.2.0, Pass 2
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/gcc-libstdc++-pass2.html
define CHROOT_SH_LIBSTDCPP
set -e
cd /sources/gcc
ln -svf gthr-posix.h libgcc/gthr-default.h
rm -rf build
mkdir -v build
cd       build
../libstdc++-v3/configure            \
    CXXFLAGS="-g -O2 -D_GNU_SOURCE"  \
    --prefix=/usr                    \
    --disable-multilib               \
    --disable-nls                    \
    --host=$$(uname -m)-lfs-linux-gnu \
    --disable-libstdcxx-pch
make $(MAKE_JOBS)
make $(MAKE_JOBS) install
endef
export CHROOT_SH_LIBSTDCPP
lfs-chroot-libstdcpp-pass2:
	[ -d $(LFS)sources/gcc ] || \
	    (mkdir $(LFS)sources/gcc; tar -xC $(LFS)sources/gcc --strip-components=1 -f $(LFS_SOURCES_GCC))
	[ -d $(LFS)sources/gcc/mpfr ] || \
	    (mkdir $(LFS)sources/gcc/mpfr; tar -xC $(LFS)sources/gcc/mpfr --strip-components=1 -f $(LFS_SOURCES_MPFR))
	[ -d $(LFS)sources/gcc/gmp ] || \
	    (mkdir $(LFS)sources/gcc/gmp; tar -xC $(LFS)sources/gcc/gmp --strip-components=1 -f $(LFS_SOURCES_GMP))
	[ -d $(LFS)sources/gcc/mpc ] || \
	    (mkdir $(LFS)sources/gcc/mpc; tar -xC $(LFS)sources/gcc/mpc --strip-components=1 -f $(LFS_SOURCES_MPC))
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_LIBSTDCPP"

# 7.8. Gettext-0.21
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/gettext.html
define CHROOT_SH_GETTEXT
set -e
cd /sources/gettext
./configure --disable-shared
make $(MAKEJOBS)
cp -v gettext-tools/src/{msgfmt,msgmerge,xgettext} /usr/bin
endef
export CHROOT_SH_GETTEXT
lfs-chroot-gettext:
	[ -d $(LFS)sources/gettext ] || \
	    (mkdir $(LFS)sources/gettext; tar -xC $(LFS)sources/gettext --strip-components=1 -f $(LFS_SOURCES_GETTEXT))
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_GETTEXT"

# 7.9. Bison-3.7.1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/bison.html
define CHROOT_SH_BISON
set -e
cd /sources/bison
./configure --prefix=/usr \
            --docdir=/usr/share/doc/bison-3.7.1
make $(MAKEJOBS)
make $(MAKEJOBS) install
endef
export CHROOT_SH_BISON
lfs-chroot-bison:
	[ -d $(LFS)sources/bison ] || \
	    (mkdir $(LFS)sources/bison; tar -xC $(LFS)sources/bison --strip-components=1 -f $(LFS_SOURCES_BISON))
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_BISON"

# 7.10. Perl-5.32.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/perl.html
define CHROOT_SH_PERL
set -e
cd /sources/perl
sh Configure -des                                        \
             -Dprefix=/usr                               \
             -Dvendorprefix=/usr                         \
             -Dprivlib=/usr/lib/perl5/5.32/core_perl     \
             -Darchlib=/usr/lib/perl5/5.32/core_perl     \
             -Dsitelib=/usr/lib/perl5/5.32/site_perl     \
             -Dsitearch=/usr/lib/perl5/5.32/site_perl    \
             -Dvendorlib=/usr/lib/perl5/5.32/vendor_perl \
             -Dvendorarch=/usr/lib/perl5/5.32/vendor_perl
make $(MAKEJOBS)
make $(MAKEJOBS) install
endef
export CHROOT_SH_PERL
lfs-chroot-perl:
	[ -d $(LFS)sources/perl ] || \
	    (mkdir $(LFS)sources/perl; tar -xC $(LFS)sources/perl --strip-components=1 -f $(LFS_SOURCES_PERL))
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_PERL"

# 7.11. Python-3.8.5
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/Python.html
define CHROOT_SH_PYTHON
set -e
cd /sources/python
./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip
make $(MAKEJOBS)
make $(MAKEJOBS) install
endef
export CHROOT_SH_PYTHON
lfs-chroot-python:
	[ -d $(LFS)sources/python ] || \
	    (mkdir $(LFS)sources/python; tar -xC $(LFS)sources/python --strip-components=1 -f $(LFS_SOURCES_PYTHON))
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_PYTHON"

# 7.12. Texinfo-6.7
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/texinfo.html
define CHROOT_SH_TEXINFO
set -e
cd /sources/texinfo
./configure --prefix=/usr
make $(MAKEJOBS)
make $(MAKEJOBS) install
endef
export CHROOT_SH_TEXINFO
lfs-chroot-texinfo:
	[ -d $(LFS)sources/texinfo ] || \
	    (mkdir $(LFS)sources/texinfo; tar -xC $(LFS)sources/texinfo --strip-components=1 -f $(LFS_SOURCES_TEXINFO))
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_TEXINFO"

# 7.13. Util-linux-2.36
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/util-linux.html
define CHROOT_SH_UTIL_LINUX
set -e
cd /sources/util-linux
mkdir -pv /var/lib/hwclock
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime    \
            --docdir=/usr/share/doc/util-linux-2.36 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python
make $(MAKEJOBS)
make $(MAKEJOBS) install
endef
export CHROOT_SH_UTIL_LINUX
lfs-chroot-util-linux:
	[ -d $(LFS)sources/util-linux ] || \
	    (mkdir $(LFS)sources/util-linux; tar -xC $(LFS)sources/util-linux --strip-components=1 -f $(LFS_SOURCES_UTIL_LINUX))
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_UTIL_LINUX"

# 7.14. Cleaning up and saving the temprary system
# http://www.linuxfromscratch.org/lfs/view/stable/chapter07/stripping.html
define CHROOT_SH_CLEANUP
set -e
find /usr/{lib,libexec} -name \*.la -delete
rm -rf /usr/share/{info,man,doc}/*
strip --strip-debug /usr/lib/* || true
strip --strip-unneeded /usr/{,s}bin/* || true
strip --strip-unneeded /tools/bin/* || true
endef
export CHROOT_SH_CLEANUP
lfs-chroot-cleanup:
	chroot $(LFS) /bin/bash --login +h -c "$$CHROOT_SH_CLEANUP"

lfs-chroot-backup: lfs-umount
	cd $(LFS) && \
	tar --exclude=tools -cJpf ../$(LFS_BACKUP_CHROOT) .

lfs-chroot-restore: lfs-umount
	cd $(LFS) && \
	tar -xpf ../$(LFS_BACKUP_CHROOT)

# Configuration files that may need to be updated include: /etc/hosts,
# /etc/fstab, /etc/passwd, /etc/group, /etc/shadow, /etc/ld.so.conf,
# /etc/sysconfig/rc.site, /etc/sysconfig/network, and
# /etc/sysconfig/ifconfig.eth0

lfs-sources-clean:
	# Some packages should be cleaned before new compiling. This should be
	# addressed properly but for now, just remove the source directories
	# before start compiling in chroot environment.
	find $(LFS)sources ! -path $(LFS)sources -type d -maxdepth 1 -exec rm -rf {} \;

# 8.3. Man-pages-5.08
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/man-pages.html
lfs-base-manpages:
	false

# 8.4. Tcl-8.6.10
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/tcl.html
lfs-base-tcl:
	false

# 8.5. Expect-5.45.4
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/expect.html
lfs-base-expect:
	false

# 8.6. DejaGNU-1.6.2
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/dejagnu.html
lfs-base-dejagnu:
	false

# 8.7. Iana-Etc-20200821
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/iana-etc.html
define BASE_SH_IANA_ETC
cd /sources/iana-etc
cp services protocols /etc/
endef
export BASE_SH_IANA_ETC
lfs-base-iana-etc:
	[ -d $(LFS)sources/iana-etc ] || \
	    (mkdir $(LFS)sources/iana-etc; tar -xC $(LFS)sources/iana-etc --strip-components=1 -f $(LFS_SOURCES_IANA_ETC))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_IANA_ETC"

# 8.8. Glibc-2.32
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/glibc.html
define BASE_SH_GLIBC
set -e
cd /sources/glibc
patch -Np1 -i /sources/glibc-2.32-fhs-1.patch
rm -rf   build
mkdir -v build
cd       build
../configure --prefix=/usr                            \
             --disable-werror                         \
             --enable-kernel=3.2                      \
             --enable-stack-protector=strong          \
             --with-headers=/usr/include              \
             --without-python \
             libc_cv_slibdir=/lib
make $(MAKEJOBS)
# TODO: 8.8.1. Installation of Glibc (make check)
touch /etc/ld.so.conf
sed '/test-installation/s@$$(PERL)@echo not running@' -i ../Makefile
make install
cp -v ../nscd/nscd.conf /etc/nscd.conf
mkdir -pv /var/cache/nscd

# TODO: 8.8.1. Installing locales

cat > /etc/nsswitch.conf << "EOF"
passwd: files
group: files
shadow: files

hosts: files dns
networks: files

protocols: files
services: files
ethers: files
rpc: files
EOF

# TODO: 8.8.2.2. Adding time zone data

cat > /etc/ld.so.conf << "EOF"
/usr/local/lib
/opt/lib
include /etc/ld.so.conf.d/*.conf
EOF
mkdir -pv /etc/ld.so.conf.d
endef
export BASE_SH_GLIBC
lfs-base-glibc:
	[ -d $(LFS)sources/glibc ] || \
	    (mkdir $(LFS)sources/glibc; tar -xC $(LFS)sources/glibc --strip-components=1 -f $(LFS_SOURCES_GLIBC))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GLIBC"

# 8.9. Zlib-1.2.11
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/zlib.html
define BASE_SH_ZLIB
set -e
cd /sources/zlib
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$$(readlink /usr/lib/libz.so) /usr/lib/libz.so
endef
export BASE_SH_ZLIB
lfs-base-zlib:
	[ -d $(LFS)sources/zlib ] || \
	    (mkdir $(LFS)sources/zlib; tar -xC $(LFS)sources/zlib --strip-components=1 -f $(LFS_SOURCES_ZLIB))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_ZLIB"

# 8.10. Bzip2-1.0.8
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/bzip2.html
define BASE_SH_BZIP2
set -e
cd /sources/bzip2
#patch -Np1 -i ../bzip2-1.0.8-install_docs-1.patch
sed -i 's@\(ln -s -f \)$$(PREFIX)/bin/@\1@' Makefile
sed -i "s@(PREFIX)/man@(PREFIX)/share/man@g" Makefile
make $(MAKEJOBS) -f Makefile-libbz2_so clean
make $(MAKEJOBS) -f Makefile-libbz2_so
make clean
# FIXME: the following make all target, needs cmp for the test
make $(MAKEJOBS)
make $(MAKEJOBS) PREFIX=/usr install
cp -v bzip2-shared /bin/bzip2
cp -av libbz2.so* /lib
ln -sv ../../lib/libbz2.so.1.0 /usr/lib/libbz2.so
rm -v /usr/bin/{bunzip2,bzcat,bzip2}
ln -sv bzip2 /bin/bunzip2
ln -sv bzip2 /bin/bzcat
endef
export BASE_SH_BZIP2
lfs-base-bzip2:
	[ -d $(LFS)sources/bzip2 ] || \
	    (mkdir $(LFS)sources/bzip2; tar -xC $(LFS)sources/bzip2 --strip-components=1 -f $(LFS_SOURCES_BZIP2))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_BZIP2"

# 8.11. Xz-5.2.5
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/xz.html
define BASE_SH_XZ
set -e
cd /sources/xz
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.2.5
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
mv -v   /usr/bin/{lzma,unlzma,lzcat,xz,unxz,xzcat} /bin
mv -v /usr/lib/liblzma.so.* /lib
ln -svf ../../lib/$$(readlink /usr/lib/liblzma.so) /usr/lib/liblzma.so
endef
export BASE_SH_XZ
lfs-base-xz:
	[ -d $(LFS)sources/xz ] || \
	    (mkdir $(LFS)sources/xz; tar -xC $(LFS)sources/xz --strip-components=1 -f $(LFS_SOURCES_XZ))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_XZ"

# 8.12. Zstd-1.4.5
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/zstd.html
define BASE_SH_ZSTD
set -e
cd /sources/zstd
make $(MAKEJOBS)
make $(MAKEJOBS) prefix=/usr install
rm -v /usr/lib/libzstd.a
mv -v /usr/lib/libzstd.so.* /lib
ln -sfv ../../lib/$$(readlink /usr/lib/libzstd.so) /usr/lib/libzstd.so
endef
export BASE_SH_ZSTD
lfs-base-zstd:
	[ -d $(LFS)sources/zstd ] || \
	    (mkdir $(LFS)sources/zstd; tar -xC $(LFS)sources/zstd --strip-components=1 -f $(LFS_SOURCES_ZSTD))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_ZSTD"

# 8.13. File-5.39
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/file.html
define BASE_SH_FILE
set -e
cd /sources/file
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_FILE
lfs-base-file:
	[ -d $(LFS)sources/file ] || \
	    (mkdir $(LFS)sources/file; tar -xC $(LFS)sources/file --strip-components=1 -f $(LFS_SOURCES_FILE))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_FILE"

# 8.14. Readline-8.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/readline.html
define BASE_SH_READLINE
set -e
cd /sources/readline
sed -i '/MV.*old/d' Makefile.in
sed -i '/{OLDSUFF}/c:' support/shlib-install
./configure --prefix=/usr    \
            --disable-static \
            --with-curses    \
            --docdir=/usr/share/doc/readline-8.0
make $(MAKEJOBS) SHLIB_LIBS="-lncursesw"
make $(MAKEJOBS) SHLIB_LIBS="-lncursesw" install
mv -v /usr/lib/lib{readline,history}.so.* /lib
chmod -v u+w /lib/lib{readline,history}.so.*
ln -sfv ../../lib/$$(readlink /usr/lib/libreadline.so) /usr/lib/libreadline.so
ln -sfv ../../lib/$$(readlink /usr/lib/libhistory.so ) /usr/lib/libhistory.so
#install -v -m644 doc/*.{ps,pdf,html,dvi} /usr/share/doc/readline-8.0
endef
export BASE_SH_READLINE
lfs-base-readline:
	[ -d $(LFS)sources/readline ] || \
	    (mkdir $(LFS)sources/readline; tar -xC $(LFS)sources/readline --strip-components=1 -f $(LFS_SOURCES_READLINE))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_READLINE"

# 8.15. M4-1.4.18
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/m4.html
define BASE_SH_M4
set -e
cd /sources/m4
make distclean || true
sed -i 's/IO_ftrylockfile/IO_EOF_SEEN/' lib/*.c
echo "#define _IO_IN_BACKUP 0x100" >> lib/stdio-impl.h
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_M4
lfs-base-m4:
	[ -d $(LFS)sources/m4 ] || \
	    (mkdir $(LFS)sources/m4; tar -xC $(LFS)sources/m4 --strip-components=1 -f $(LFS_SOURCES_M4))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_M4"

# 8.16. Bc-3.1.5
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/bc.html
define BASE_SH_BC
set -e
cd /sources/bc
PREFIX=/usr CC=gcc CFLAGS="-std=c99" ./configure.sh -G -O3
make $(MAKEJOBS)
#make $(MAKEJOBS) test
make $(MAKEJOBS) install
endef
export BASE_SH_BC
lfs-base-bc:
	[ -d $(LFS)sources/bc ] || \
	    (mkdir $(LFS)sources/bc; tar -xC $(LFS)sources/bc --strip-components=1 -f $(LFS_SOURCES_BC))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_BC"

# 8.17. Flex-2.6.4
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/flex.html
define BASE_SH_FLEX
set -e
cd /sources/flex
./configure --prefix=/usr --docdir=/usr/share/doc/flex-2.6.4
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
ln -sv flex /usr/bin/lex
endef
export BASE_SH_FLEX
lfs-base-flex:
	[ -d $(LFS)sources/flex ] || \
	    (mkdir $(LFS)sources/flex; tar -xC $(LFS)sources/flex --strip-components=1 -f $(LFS_SOURCES_FLEX))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_FLEX"

# 8.18. Binutils-2.35
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/binutils.html
define BASE_SH_BINUTILS
set -e
cd /sources/binutils
# sed -i '/@\tincremental_copy/d' gold/testsuite/Makefile.in
mkdir -v build
cd       build
make distclean || true
../configure --prefix=/usr       \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --with-system-zlib
make $(MAKEJOBS) tooldir=/usr
#make $(MAKEJOBS) -k check
make $(MAKEJOBS) tooldir=/usr install
endef
export BASE_SH_BINUTILS
lfs-base-binutils:
	[ -d $(LFS)sources/binutils ] || \
	    (mkdir $(LFS)sources/binutils; tar -xC $(LFS)sources/binutils --strip-components=1 -f $(LFS_SOURCES_BINUTILS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_BINUTILS"

# 8.19.GMP-6.2.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/gmp.html
define BASE_SH_GMP
set -e
cd /sources/gmp
./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/gmp-6.2.0
make $(MAKEJOBS)
#make $(MAKEJOBS) html
#make $(MAKEJOBS) check
#awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log
make $(MAKEJOBS) install
#make $(MAKEJOBS) install-html
endef
export BASE_SH_GMP
lfs-base-gmp:
	[ -d $(LFS)sources/gmp ] || \
	    (mkdir $(LFS)sources/gmp; tar -xC $(LFS)sources/gmp --strip-components=1 -f $(LFS_SOURCES_GMP))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GMP"

# 8.20. MPFR-4.1.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/mpfr.html
define BASE_SH_MPFR
set -e
cd /sources/mpfr
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/mpfr-4.1.0
make $(MAKEJOBS)
#make $(MAKEJOBS) html
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
#make $(MAKEJOBS) install-html
endef
export BASE_SH_MPFR
lfs-base-mpfr:
	[ -d $(LFS)sources/mpfr ] || \
	    (mkdir $(LFS)sources/mpfr; tar -xC $(LFS)sources/mpfr --strip-components=1 -f $(LFS_SOURCES_MPFR))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_MPFR"

# 8.21. MPC-1.1.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/mpc.html
define BASE_SH_MPC
set -e
cd /sources/mpc
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.1.0
make $(MAKEJOBS)
#make $(MAKEJOBS) html
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
#make $(MAKEJOBS) install-html
endef
export BASE_SH_MPC
lfs-base-mpc:
	[ -d $(LFS)sources/mpc ] || \
	    (mkdir $(LFS)sources/mpc; tar -xC $(LFS)sources/mpc --strip-components=1 -f $(LFS_SOURCES_MPC))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_MPC"

# 8.22. Attr-2.4.48
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/attr.html
define BASE_SH_ATTR
set -e
cd /sources/attr
./configure --prefix=/usr     \
            --bindir=/bin     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/attr-2.4.48
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
mv -v /usr/lib/libattr.so.* /lib
(cd /usr/lib && ln -sfv ../../lib/$(readlink /usr/lib/libattr.so) libattr.so)
endef
export BASE_SH_ATTR
lfs-base-attr:
	[ -d $(LFS)sources/attr ] || \
	    (mkdir $(LFS)sources/attr; tar -xC $(LFS)sources/attr --strip-components=1 -f $(LFS_SOURCES_ATTR))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_ATTR"

# 8.23. Acl-2.2.53
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/acl.html
define BASE_SH_ACL
set -e
cd /sources/acl
./configure --prefix=/usr         \
            --bindir=/bin         \
            --disable-static      \
            --libexecdir=/usr/lib \
            --docdir=/usr/share/doc/acl-2.2.53
make $(MAKEJOBS)
make $(MAKEJOBS) install
mv -v /usr/lib/libacl.so.* /lib
(cd /usr/lib && ln -sfv ../../lib/$(readlink /usr/lib/libacl.so) libacl.so)
endef
export BASE_SH_ACL
lfs-base-acl:
	[ -d $(LFS)sources/acl ] || \
	    (mkdir $(LFS)sources/acl; tar -xC $(LFS)sources/acl --strip-components=1 -f $(LFS_SOURCES_ACL))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_ACL"

# 8.24. Libcap-2.42
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/libcap.html
define BASE_SH_LIBCAP
set -e
cd /sources/libcap
sed -i '/install -m.*STACAPLIBNAME/d' libcap/Makefile
make $(MAKEJOBS) lib=lib
#make $(MAKEJOBS) test
make lib=lib PKGCONFIGDIR=/usr/lib/pkgconfig install
chmod -v 755 /lib/libcap.so.2.42
mv -v /lib/libpsx.a /usr/lib
rm -v /lib/libcap.so
(cd /usr/lib && ln -sfv ../../lib/libcap.so.2 libcap.so)
endef
export BASE_SH_LIBCAP
lfs-base-libcap:
	[ -d $(LFS)sources/libcap ] || \
	    (mkdir $(LFS)sources/libcap; tar -xC $(LFS)sources/libcap --strip-components=1 -f $(LFS_SOURCES_LIBCAP))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_LIBCAP"

# 8.25. Shadow-4.8.1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/shadow.html
define BASE_SH_SHADOW
set -e
cd /sources/shadow
sed -i 's/groups$$(EXEEXT) //' src/Makefile.in
find man -name Makefile.in -exec sed -i 's/groups\.1 / /'   {} \;
find man -name Makefile.in -exec sed -i 's/getspnam\.3 / /' {} \;
find man -name Makefile.in -exec sed -i 's/passwd\.5 / /'   {} \;
sed -e 's:#ENCRYPT_METHOD DES:ENCRYPT_METHOD SHA512:' \
    -e 's:/var/spool/mail:/var/mail:'                 \
    -i etc/login.defs
# To build Shadow with Cracklib support
#sed -i 's:DICTPATH.*:DICTPATH\t/lib/cracklib/pw_dict:' etc/login.defs
sed -i 's/1000/999/' etc/useradd
touch /usr/bin/passwd
./configure --sysconfdir=/etc \
            --with-group-name-max-length=32
make $(MAKEJOBS)
make $(MAKEJOBS) install
# Configuring Shadow
pwconv
grpconv
sed -i 's/yes/no/' /etc/default/useradd
# Setting the root password
passwd -d root
endef
export BASE_SH_SHADOW
lfs-base-shadow:
	[ -d $(LFS)sources/shadow ] || \
	    (mkdir $(LFS)sources/shadow; tar -xC $(LFS)sources/shadow --strip-components=1 -f $(LFS_SOURCES_SHADOW))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_SHADOW"

# 8.26. GCC-10.2.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/gcc.html
define BASE_SH_GCC
set -e
cd /sources/gcc
case $$(uname -m) in
  x86_64)
    sed -e '/m64=/s/lib64/lib/' -i.orig gcc/config/i386/t-linux64;;
esac
mkdir -pv build
cd        build
make distclean || true
../configure --prefix=/usr            \
             LD=ld                    \
             --enable-languages=c,c++ \
             --disable-multilib       \
             --disable-bootstrap      \
             --with-system-zlib
make $(MAKEJOBS)
#ulimit -s 32768
#chown -Rv tester . 
#su tester -c "PATH=$PATH make -k check"
#../contrib/test_summary
make $(MAKEJOBS) install
rm -rf /usr/lib/gcc/$$(gcc -dumpmachine)/10.2.0/include-fixed/bits/
chown -v -R root:root /usr/lib/gcc/*linux-gnu/10.2.0/include{,-fixed}
ln -sv ../usr/bin/cpp /lib
install -v -dm755 /usr/lib/bfd-plugins
ln -sfv ../../libexec/gcc/$$(gcc -dumpmachine)/10.2.0/liblto_plugin.so \
        /usr/lib/bfd-plugins/

echo 'int main(){}' > dummy.c
cc dummy.c -v -Wl,--verbose &> dummy.log
readelf -l a.out | grep ': /lib' | \
	grep "[Requesting program interpreter: /lib64/ld-linux-x86-64.so.2]"
grep -o '/usr/lib.*/crt[1in].*succeeded' dummy.log | \
	grep "/usr/lib/gcc/x86_64-pc-linux-gnu/10.2.0/../../../../lib/crt[1in].o succeeded"
grep -B4 '^ /usr/include' dummy.log
grep 'SEARCH.*/usr/lib' dummy.log | sed 's|; |\n|g'
grep "/lib.*/libc.so.6 " dummy.log | \
	grep "attempt to open /lib/libc.so.6 succeeded"
grep found dummy.log
rm -v dummy.c a.out dummy.log

mkdir -pv /usr/share/gdb/auto-load/usr/lib
mv -v /usr/lib/*gdb.py /usr/share/gdb/auto-load/usr/lib
endef
export BASE_SH_GCC
lfs-base-gcc:
	[ -d $(LFS)sources/gcc ] || \
	    (mkdir $(LFS)sources/gcc; tar -xC $(LFS)sources/gcc --strip-components=1 -f $(LFS_SOURCES_GCC))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GCC"

# 8.27. Pkg-config-0.29.2
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/pkg-config.html
define BASE_SH_PKG_CONFIG
set -e
cd /sources/pkg-config
./configure --prefix=/usr              \
            --with-internal-glib       \
            --disable-host-tool        \
            --docdir=/usr/share/doc/pkg-config-0.29.2
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_PKG_CONFIG
lfs-base-pkg-config:
	[ -d $(LFS)sources/pkg-config ] || \
	    (mkdir $(LFS)sources/pkg-config; tar -xC $(LFS)sources/pkg-config --strip-components=1 -f $(LFS_SOURCES_PKG_CONFIG))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_PKG_CONFIG"

# 8.28. Ncurses-6.5
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/ncurses.html
define BASE_SH_NCURSES
set -e
cd /sources/ncurses
sed -i '/LIBTOOL_INSTALL/d' c++/Makefile.in
./configure --prefix=/usr           \
            --mandir=/usr/share/man \
            --with-shared           \
            --without-debug         \
            --without-normal        \
            --enable-pc-files       \
            --enable-widec
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
mv -v /usr/lib/libncursesw.so.6* /lib
(cd /usr/lib/ && ln -sfv ../../lib/$$(readlink libncursesw.so) libncursesw.so)
for lib in ncurses form panel menu ; do
    rm -vf                     /usr/lib/lib$${lib}.so
    echo "INPUT(-l$${lib}w)" > /usr/lib/lib$${lib}.so
    ln -sfv $${lib}w.pc        /usr/lib/pkgconfig/$${lib}.pc
done
rm -vf                     /usr/lib/libcursesw.so
echo "INPUT(-lncursesw)" > /usr/lib/libcursesw.so
ln -sfv libncurses.so      /usr/lib/libcurses.so
#mkdir -v       /usr/share/doc/ncurses-6.2
#cp -v -R doc/* /usr/share/doc/ncurses-6.2
endef
export BASE_SH_NCURSES
lfs-base-ncurses:
	[ -d $(LFS)sources/ncurses ] || \
	    (mkdir $(LFS)sources/ncurses; tar -xC $(LFS)sources/ncurses --strip-components=1 -f $(LFS_SOURCES_NCURSES))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_NCURSES"

# 8.29. Sed-4.8
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/sed.html
define BASE_SH_SED
set -e
cd /sources/sed
./configure --prefix=/usr --bindir=/bin
make $(MAKEJOBS)
#make $(MAKEJOBS) html
#chown -Rv tester .
#su tester -c "PATH=$PATH make check"
make $(MAKEJOBS) install
#install -d -m755           /usr/share/doc/sed-4.8
#install -m644 doc/sed.html /usr/share/doc/sed-4.8
endef
export BASE_SH_SED
lfs-base-sed:
	[ -d $(LFS)sources/sed ] || \
	    (mkdir $(LFS)sources/sed; tar -xC $(LFS)sources/sed --strip-components=1 -f $(LFS_SOURCES_SED))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_SED"

# 8.30. Osmisc-23.3
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/psmisc.html
define BASE_SH_PSMISC
set -e
cd /sources/psmisc
./configure --prefix=/usr
make $(MAKEJOBS)
make $(MAKEJOBS) install
mv -v /usr/bin/fuser   /bin
mv -v /usr/bin/killall /bin
endef
export BASE_SH_PSMISC
lfs-base-psmisc:
	[ -d $(LFS)sources/psmisc ] || \
	    (mkdir $(LFS)sources/psmisc; tar -xC $(LFS)sources/psmisc --strip-components=1 -f $(LFS_SOURCES_PSMISC))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_PSMISC"

# 8.31. gettext-0.21
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/gettext.html
define BASE_SH_GETTEXT
set -e
cd /sources/gettext
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.21
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
chmod -v 0755 /usr/lib/preloadable_libintl.so
endef
export BASE_SH_GETTEXT
lfs-base-gettext:
	[ -d $(LFS)sources/gettext ] || \
	    (mkdir $(LFS)sources/gettext; tar -xC $(LFS)sources/gettext --strip-components=1 -f $(LFS_SOURCES_GETTEXT))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GETTEXT"

# 8.32. Bison-3.7.1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/bison.html
define BASE_SH_BISON
set -e
cd /sources/bison
./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.7.1
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_BISON
lfs-base-bison:
	[ -d $(LFS)sources/bison ] || \
	    (mkdir $(LFS)sources/bison; tar -xC $(LFS)sources/bison --strip-components=1 -f $(LFS_SOURCES_BISON))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_BISON"

# 8.33. Grep-3.4
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/grep.html
define BASE_SH_GREP
set -e
cd /sources/grep
./configure --prefix=/usr --bindir=/bin
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_GREP
lfs-base-grep:
	[ -d $(LFS)sources/grep ] || \
	    (mkdir $(LFS)sources/grep; tar -xC $(LFS)sources/grep --strip-components=1 -f $(LFS_SOURCES_GREP))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GREP"

# 8.34. Bash-5.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/bash.html
define BASE_SH_BASH
set -e
cd /sources/bash
#patch -Np1 -i ../bash-5.0-upstream_fixes-1.patch
./configure --prefix=/usr                    \
            --docdir=/usr/share/doc/bash-5.0 \
            --without-bash-malloc            \
            --with-installed-readline
make $(MAKEJOBS)
#chown -Rv tester .
#su tester << EOF
#PATH=$PATH make tests < $$(tty)
#EOF
make $(MAKEJOBS) install
mv -vf /usr/bin/bash /bin
endef
export BASE_SH_BASH
lfs-base-bash:
	[ -d $(LFS)sources/bash ] || \
	    (mkdir $(LFS)sources/bash; tar -xC $(LFS)sources/bash --strip-components=1 -f $(LFS_SOURCES_BASH))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_BASH"

# 8.35. Libtool-2.4.6
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/libtool.html
define BASE_SH_LIBTOOL
set -e
cd /sources/libtool
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_LIBTOOL
lfs-base-libtool:
	[ -d $(LFS)sources/libtool ] || \
	    (mkdir $(LFS)sources/libtool; tar -xC $(LFS)sources/libtool --strip-components=1 -f $(LFS_SOURCES_LIBTOOL))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_LIBTOOL"

# 8.36. GDBM-1.18.1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/gdbm.html
define BASE_SH_GDBM
set -e
cd /sources/gdbm
sed -r -i '/^char.*parseopt_program_(doc|args)/d' src/parseopt.c
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_GDBM
lfs-base-gdbm:
	[ -d $(LFS)sources/gdbm ] || \
	    (mkdir $(LFS)sources/gdbm; tar -xC $(LFS)sources/gdbm --strip-components=1 -f $(LFS_SOURCES_GDBM))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GDBM"

# 8.37. Gpref-3.1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/gperf.html
define BASE_SH_GPERF
set -e
cd /sources/gperf
./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
make $(MAKEJOBS)
#make -j1 check
make $(MAKEJOBS) install
endef
export BASE_SH_GPERF
lfs-base-gperf:
	[ -d $(LFS)sources/gperf ] || \
	    (mkdir $(LFS)sources/gperf; tar -xC $(LFS)sources/gperf --strip-components=1 -f $(LFS_SOURCES_GPERF))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GPERF"

# 8.38. Expat-2.2.9
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/expat.html
define BASE_SH_EXPAT
set -e
cd /sources/expat
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/expat-2.2.9
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
#install -v -m644 doc/*.{html,png,css} /usr/share/doc/expat-2.2.9
endef
export BASE_SH_EXPAT
lfs-base-expat:
	[ -d $(LFS)sources/expat ] || \
	    (mkdir $(LFS)sources/expat; tar -xC $(LFS)sources/expat --strip-components=1 -f $(LFS_SOURCES_EXPAT))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_EXPAT"

# 8.39. Inetutils-1.9.4
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/inetutils.html
define BASE_SH_INETUTILS
set -e
cd /sources/inetutils
./configure --prefix=/usr        \
            --localstatedir=/var \
            --disable-logger     \
            --disable-whois      \
            --disable-rcp        \
            --disable-rexec      \
            --disable-rlogin     \
            --disable-rsh        \
            --disable-servers
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
mv -v /usr/bin/{hostname,ping,ping6,traceroute} /bin
mv -v /usr/bin/ifconfig /sbin
endef
export BASE_SH_INETUTILS
lfs-base-inetutils:
	[ -d $(LFS)sources/inetutils ] || \
	    (mkdir $(LFS)sources/inetutils; tar -xC $(LFS)sources/inetutils --strip-components=1 -f $(LFS_SOURCES_INETUTILS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_INETUTILS"

# 8.40. Perl-5.32.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/perl.html
define BASE_SH_PERL
set -e
cd /sources/perl
export BUILD_ZLIB=False
export BUILD_BZIP2=0
sh Configure -des                                         \
             -Dprefix=/usr                                \
             -Dvendorprefix=/usr                          \
             -Dprivlib=/usr/lib/perl5/5.32/core_perl      \
             -Darchlib=/usr/lib/perl5/5.32/core_perl      \
             -Dsitelib=/usr/lib/perl5/5.32/site_perl      \
             -Dsitearch=/usr/lib/perl5/5.32/site_perl     \
             -Dvendorlib=/usr/lib/perl5/5.32/vendor_perl  \
             -Dvendorarch=/usr/lib/perl5/5.32/vendor_perl \
             -Dman1dir=/usr/share/man/man1                \
             -Dman3dir=/usr/share/man/man3                \
             -Dpager="/usr/bin/less -isR"                 \
             -Duseshrplib                                 \
             -Dusethreads

make $(MAKEJOBS)
#make $(MAKEJOBS) test
make $(MAKEJOBS) install
unset BUILD_ZLIB BUILD_BZIP2
endef
export BASE_SH_PERL
lfs-base-perl:
	[ -d $(LFS)sources/perl ] || \
	    (mkdir $(LFS)sources/perl; tar -xC $(LFS)sources/perl --strip-components=1 -f $(LFS_SOURCES_PERL))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_PERL"

# 8.41. XML::Parser-2.46
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/xml-parser.html
define BASE_SH_XML-PARSER
set -e
cd /sources/xml-parser
perl Makefile.PL
make $(MAKEJOBS)
#make $(MAKEJOBS) test
make $(MAKEJOBS) install
endef
export BASE_SH_XML-PARSER
lfs-base-xml-parser:
	[ -d $(LFS)sources/xml-parser ] || \
	    (mkdir $(LFS)sources/xml-parser; tar -xC $(LFS)sources/xml-parser --strip-components=1 -f $(LFS_SOURCES_XML_PARSER))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_XML-PARSER"

#~ # 8.42. Intltool-0.51.0
#~ # http://www.linuxfromscratch.org/lfs/view/stable/chapter08/intltool.html
#~ define BASE_SH_INTLTOOL
#~ set -e
#~ cd /sources/intltool
#~ # FIXME
#~ #sed -i 's:\\\${:\\\$$\\{:' intltool-update.in
#~ ./configure --prefix=/usr
#~ make $(MAKEJOBS)
#~ #make $(MAKEJOBS) check
#~ make $(MAKEJOBS) install
#~ install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/intltool-0.51.0/I18N-HOWTO
#~ endef
#~ export BASE_SH_INTLTOOL
#~ lfs-base-intltool:
#~ 	[ -d $(LFS)sources/intltool ] || \
#~ 	    (mkdir $(LFS)sources/intltool; tar -xC $(LFS)sources/intltool --strip-components=1 -f $(LFS_SOURCES_INTLTOOL))
#~ 	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_INTLTOOL"

# 8.43. Autoconf-2.69
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/autoconf.html
define BASE_SH_AUTOCONF
set -e
cd /sources/autoconf
sed -i '361 s/{/\\{/' bin/autoscan.in
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_AUTOCONF
lfs-base-autoconf:
	[ -d $(LFS)sources/autoconf ] || \
	    (mkdir $(LFS)sources/autoconf; tar -xC $(LFS)sources/autoconf --strip-components=1 -f $(LFS_SOURCES_AUTOCONF))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_AUTOCONF"

# 8.44. Automake-1.16.2
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/automake.html
define BASE_SH_AUTOMAKE
set -e
cd /sources/automake
sed -i "s/''/etags/" t/tags-lisp-space.sh
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.2
make $(MAKEJOBS)
#make -j 4 check
make $(MAKEJOBS) install
endef
export BASE_SH_AUTOMAKE
lfs-base-automake:
	[ -d $(LFS)sources/automake ] || \
	    (mkdir $(LFS)sources/automake; tar -xC $(LFS)sources/automake --strip-components=1 -f $(LFS_SOURCES_AUTOMAKE))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_AUTOMAKE"

# 8.45. Kmod-27
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/kmod.html
define BASE_SH_KMOD
set -e
cd /sources/kmod
./configure --prefix=/usr          \
            --bindir=/bin          \
            --sysconfdir=/etc      \
            --with-rootlibdir=/lib \
            --with-xz              \
            --with-zlib
make $(MAKEJOBS)
make $(MAKEJOBS) install

for target in depmod insmod lsmod modinfo modprobe rmmod; do
  ln -sfv ../bin/kmod /sbin/$$target
done

ln -sfv kmod /bin/lsmod
endef
export BASE_SH_KMOD
lfs-base-kmod:
	[ -d $(LFS)sources/kmod ] || \
	    (mkdir $(LFS)sources/kmod; tar -xC $(LFS)sources/kmod --strip-components=1 -f $(LFS_SOURCES_KMOD))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_KMOD"

# 8.46. Libelf from Elfutils-0.180
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/libelf.html
define BASE_SH_ELFUTILS
set -e
cd /sources/elfutils
./configure --prefix=/usr --disable-debuginfod --libdir=/lib
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /lib/libelf.a
endef
export BASE_SH_ELFUTILS
lfs-base-elfutils:
	[ -d $(LFS)sources/elfutils ] || \
	    (mkdir $(LFS)sources/elfutils; tar -xC $(LFS)sources/elfutils --strip-components=1 -f $(LFS_SOURCES_ELFUTILS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_ELFUTILS"

# 8.47. Libffi-3.3
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/libffi.html
define BASE_SH_LIBFFI
set -e
cd /sources/libffi
./configure --prefix=/usr --disable-static --with-gcc-arch=native
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_LIBFFI
lfs-base-libffi:
	[ -d $(LFS)sources/libffi ] || \
	    (mkdir $(LFS)sources/libffi; tar -xC $(LFS)sources/libffi --strip-components=1 -f $(LFS_SOURCES_LIBFFI))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_LIBFFI"

# 8.48. OpenSSL-1.1.1g
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/openssl.html
define BASE_SH_OPENSSL
set -e
cd /sources/openssl
./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic
make $(MAKEJOBS)
#make $(MAKEJOBS) test
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
#mv -v /usr/share/doc/openssl /usr/share/doc/openssl-1.1.1g
#cp -vfr doc/* /usr/share/doc/openssl-1.1.1g
endef
export BASE_SH_OPENSSL
lfs-base-openssl:
	[ -d $(LFS)sources/openssl ] || \
	    (mkdir $(LFS)sources/openssl; tar -xC $(LFS)sources/openssl --strip-components=1 -f $(LFS_SOURCES_OPENSSL))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_OPENSSL"

# 8.49. Python-3.8.5
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/Python.html
define BASE_SH_PYTHON
set -e
cd /sources/python
./configure --prefix=/usr       \
            --enable-shared     \
            --with-system-expat \
            --with-system-ffi   \
            --with-ensurepip=yes
make $(MAKEJOBS)
make $(MAKEJOBS) install
chmod -v 755 /usr/lib/libpython3.8.so
chmod -v 755 /usr/lib/libpython3.so
ln -sfv pip3.8 /usr/bin/pip3

#install -v -dm755 /usr/share/doc/python-3.8.5/html 
#tar --strip-components=1  \
#    --no-same-owner       \
#    --no-same-permissions \
#    -C /usr/share/doc/python-3.8.5/html \
#    -xvf ../python-3.8.5-docs-html.tar.bz2
endef
export BASE_SH_PYTHON
lfs-base-python:
	[ -d $(LFS)sources/python ] || \
	    (mkdir $(LFS)sources/python; tar -xC $(LFS)sources/python --strip-components=1 -f $(LFS_SOURCES_PYTHON))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_PYTHON"

# 8.50. Ninja-1.10.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/ninja.html
define BASE_SH_NINJA
set -e
cd /sources/ninja
export NINJAJOBS=4
sed -i '/int Guess/a \
  int   j = 0;\
  char* jobs = getenv( "NINJAJOBS" );\
  if ( jobs != NULL ) j = atoi( jobs );\
  if ( j > 0 ) return j;\
' src/ninja.cc
python3 configure.py --bootstrap

#./ninja ninja_test
#./ninja_test --gtest_filter=-SubprocessTest.SetWithLots

install -vm755 ninja /usr/bin/
install -vDm644 misc/bash-completion /usr/share/bash-completion/completions/ninja
install -vDm644 misc/zsh-completion  /usr/share/zsh/site-functions/_ninja
endef
export BASE_SH_NINJA
lfs-base-ninja:
	[ -d $(LFS)sources/ninja ] || \
	    (mkdir $(LFS)sources/ninja; tar -xC $(LFS)sources/ninja --strip-components=1 -f $(LFS_SOURCES_NINJA))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_NINJA"

# 8.51. Meson-0.55.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/meson.html
define BASE_SH_MESON
set -e
cd /sources/meson
python3 setup.py build
python3 setup.py install --root=dest
cp -rv dest/* /
endef
export BASE_SH_MESON
lfs-base-meson:
	[ -d $(LFS)sources/meson ] || \
	    (mkdir $(LFS)sources/meson; tar -xC $(LFS)sources/meson --strip-components=1 -f $(LFS_SOURCES_MESON))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_MESON"

# 8.52. Coreutils-8.32
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/coreutils.html
define BASE_SH_COREUTILS
set -e
cd /sources/coreutils
patch -Np1 -i ../coreutils-8.32-i18n-1.patch

#sed -i '/test.lock/s/^/#/' gnulib-tests/gnulib.mk
autoreconf -fiv
FORCE_UNSAFE_CONFIGURE=1 ./configure \
            --prefix=/usr            \
            --enable-no-install-program=kill,uptime
make $(MAKEJOBS)
#make NON_ROOT_USERNAME=tester check-root
#echo "dummy:x:102:tester" >> /etc/group
#chown -Rv tester . 
#su tester -c "PATH=$PATH make RUN_EXPENSIVE_TESTS=yes check"
#sed -i '/dummy/d' /etc/group

make $(MAKEJOBS) install
mv -v /usr/bin/{cat,chgrp,chmod,chown,cp,date,dd,df,echo} /bin
mv -v /usr/bin/{false,ln,ls,mkdir,mknod,mv,pwd,rm} /bin
mv -v /usr/bin/{rmdir,stty,sync,true,uname} /bin
mv -v /usr/bin/chroot /usr/sbin
#mv -v /usr/share/man/man1/chroot.1 /usr/share/man/man8/chroot.8
#sed -i 's/"1"/"8"/' /usr/share/man/man8/chroot.8
mv -v /usr/bin/{head,nice,sleep,touch} /bin

endef
export BASE_SH_COREUTILS
lfs-base-coreutils:
	[ -d $(LFS)sources/coreutils ] || \
	    (mkdir $(LFS)sources/coreutils; tar -xC $(LFS)sources/coreutils --strip-components=1 -f $(LFS_SOURCES_COREUTILS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_COREUTILS"

# 8.53. Check-0.15.2
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/check.html
define BASE_SH_CHECK
set -e
cd /sources/check
./configure --prefix=/usr --disable-static
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make docdir=/usr/share/doc/check-0.15.2 install
endef
export BASE_SH_CHECK
lfs-base-check:
	[ -d $(LFS)sources/check ] || \
	    (mkdir $(LFS)sources/check; tar -xC $(LFS)sources/check --strip-components=1 -f $(LFS_SOURCES_CHECK))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_CHECK"

# 8.54. Diffutils-3.7
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/diffutils.html
define BASE_SH_DIFFUTILS
set -e
cd /sources/diffutils
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_DIFFUTILS
lfs-base-diffutils:
	[ -d $(LFS)sources/diffutils ] || \
	    (mkdir $(LFS)sources/diffutils; tar -xC $(LFS)sources/diffutils --strip-components=1 -f $(LFS_SOURCES_DIFFUTILS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_DIFFUTILS"

# 8.55. Gawk-5.1.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/gawk.html
define BASE_SH_GAWK
set -e
cd /sources/gawk
sed -i 's/extras//' Makefile.in
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
mkdir -v /usr/share/doc/gawk-5.1.0
#cp    -v doc/{awkforai.txt,*.{eps,pdf,jpg}} /usr/share/doc/gawk-5.1.0
endef
export BASE_SH_GAWK
lfs-base-gawk:
	[ -d $(LFS)sources/gawk ] || \
	    (mkdir $(LFS)sources/gawk; tar -xC $(LFS)sources/gawk --strip-components=1 -f $(LFS_SOURCES_GAWK))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GAWK"

# 8.56. Findutils-4.7.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/findutils.html
define BASE_SH_FINDUTILS
set -e
cd /sources/findutils
./configure --prefix=/usr --localstatedir=/var/lib/locate
make $(MAKEJOBS)
#chown -Rv tester .
#su tester -c "PATH=$PATH make check"
make $(MAKEJOBS) install
mv -v /usr/bin/find /bin
sed -i 's|find:=$${BINDIR}|find:=/bin|' /usr/bin/updatedb
endef
export BASE_SH_FINDUTILS
lfs-base-findutils:
	[ -d $(LFS)sources/findutils ] || \
	    (mkdir $(LFS)sources/findutils; tar -xC $(LFS)sources/findutils --strip-components=1 -f $(LFS_SOURCES_FINDUTILS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_FINDUTILS"

# 8.57. Groff-1.22.4
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/groff.html
define BASE_SH_GROFF
set -e
cd /sources/groff
PAGE=A4 ./configure --prefix=/usr
./configure --prefix=/usr
make -j1
make $(MAKEJOBS) install
endef
export BASE_SH_GROFF
lfs-base-groff:
	[ -d $(LFS)sources/groff ] || \
	    (mkdir $(LFS)sources/groff; tar -xC $(LFS)sources/groff --strip-components=1 -f $(LFS_SOURCES_GROFF))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GROFF"

# 8.58. GRUB-2.04
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/grub.html
define BASE_SH_GRUB
set -e
cd /sources/grub
./configure --prefix=/usr          \
            --sbindir=/sbin        \
            --sysconfdir=/etc      \
            --disable-efiemu       \
            --disable-werror
make $(MAKEJOBS)
make $(MAKEJOBS) install
mv -v /etc/bash_completion.d/grub /usr/share/bash-completion/completions
endef
export BASE_SH_GRUB
lfs-base-grub:
	[ -d $(LFS)sources/grub ] || \
	    (mkdir $(LFS)sources/grub; tar -xC $(LFS)sources/grub --strip-components=1 -f $(LFS_SOURCES_GRUB))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GRUB"

# 8.59. Less-551
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/less.html
define BASE_SH_LESS
set -e
cd /sources/less
./configure --prefix=/usr --sysconfdir=/etc
make $(MAKEJOBS)
make $(MAKEJOBS) install
endef
export BASE_SH_LESS
lfs-base-less:
	[ -d $(LFS)sources/less ] || \
	    (mkdir $(LFS)sources/less; tar -xC $(LFS)sources/less --strip-components=1 -f $(LFS_SOURCES_LESS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_LESS"

# 8.60. Gzip-1.10
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/gzip.html
define BASE_SH_GZIP
set -e
cd /sources/gzip
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
mv -v /usr/bin/gzip /bin
endef
export BASE_SH_GZIP
lfs-base-gzip:
	[ -d $(LFS)sources/gzip ] || \
	    (mkdir $(LFS)sources/gzip; tar -xC $(LFS)sources/gzip --strip-components=1 -f $(LFS_SOURCES_GZIP))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_GZIP"

# 8.61. IPRoute2-5.8.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/iproute2.html
define BASE_SH_IPROUTE2
set -e
cd /sources/iproute2
sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
sed -i 's/.m_ipt.o//' tc/Makefile
make $(MAKEJOBS)
make DOCDIR=/usr/share/doc/iproute2-5.8.0 install
endef
export BASE_SH_IPROUTE2
lfs-base-iproute2:
	[ -d $(LFS)sources/iproute2 ] || \
	    (mkdir $(LFS)sources/iproute2; tar -xC $(LFS)sources/iproute2 --strip-components=1 -f $(LFS_SOURCES_IPROUTE2))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_IPROUTE2"

# 8.62. Kbd-2.3.0
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/kbd.html
define BASE_SH_KBD
set -e
cd /sources/kbd
patch -Np1 -i ../kbd-2.3.0-backspace-1.patch
sed -i '/RESIZECONS_PROGS=/s/yes/no/' configure
sed -i 's/resizecons.8 //' docs/man/man8/Makefile.in
./configure --prefix=/usr --disable-vlock
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
rm -v /usr/lib/libtswrap.{a,la,so*}
#mkdir -v            /usr/share/doc/kbd-2.3.0
#cp -R -v docs/doc/* /usr/share/doc/kbd-2.3.0
endef
export BASE_SH_KBD
lfs-base-kbd:
	[ -d $(LFS)sources/kbd ] || \
	    (mkdir $(LFS)sources/kbd; tar -xC $(LFS)sources/kbd --strip-components=1 -f $(LFS_SOURCES_KBD))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_KBD"

# 8.63. Libpipeline-1.5.3
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/libpipeline.html
define BASE_SH_LIBPIPELINE
set -e
cd /sources/libpipeline
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_LIBPIPELINE
lfs-base-libpipeline:
	[ -d $(LFS)sources/libpipeline ] || \
	    (mkdir $(LFS)sources/libpipeline; tar -xC $(LFS)sources/libpipeline --strip-components=1 -f $(LFS_SOURCES_LIBPIPELINE))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_LIBPIPELINE"

# 8.64. Make-4.3
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/make.html
define BASE_SH_MAKE
set -e
cd /sources/make
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_MAKE
lfs-base-make:
	[ -d $(LFS)sources/make ] || \
	    (mkdir $(LFS)sources/make; tar -xC $(LFS)sources/make --strip-components=1 -f $(LFS_SOURCES_MAKE))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_MAKE"

# 8.65. Patch-2.7.6
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/patch.html
define BASE_SH_PATCH
set -e
cd /sources/patch
./configure --prefix=/usr
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_PATCH
lfs-base-patch:
	[ -d $(LFS)sources/patch ] || \
	    (mkdir $(LFS)sources/patch; tar -xC $(LFS)sources/patch --strip-components=1 -f $(LFS_SOURCES_PATCH))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_PATCH"

# 8.66. Man-DB-2.9.3
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/man-db.html
define BASE_SH_MAN_DB
set -e
cd /sources/man-db
./configure --prefix=/usr                        \
            --docdir=/usr/share/doc/man-db-2.9.3 \
            --sysconfdir=/etc                    \
            --disable-setuid                     \
            --enable-cache-owner=bin             \
            --with-browser=/usr/bin/lynx         \
            --with-vgrind=/usr/bin/vgrind        \
            --with-grap=/usr/bin/grap            \
            --with-systemdtmpfilesdir=           \
            --with-systemdsystemunitdir=
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
endef
export BASE_SH_MAN-DB
lfs-base-man-db:
	[ -d $(LFS)sources/man-db ] || \
	    (mkdir $(LFS)sources/man-db; tar -xC $(LFS)sources/man-db --strip-components=1 -f $(LFS_SOURCES_MAN_DB))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_MAN_DB"

# 8.67. Tar-1.32
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/tar.html
define BASE_SH_TAR
set -e
cd /sources/tar
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr \
            --bindir=/bin
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
#make -C doc install-html docdir=/usr/share/doc/tar-1.32
endef
export BASE_SH_TAR
lfs-base-tar:
	[ -d $(LFS)sources/tar ] || \
	    (mkdir $(LFS)sources/tar; tar -xC $(LFS)sources/tar --strip-components=1 -f $(LFS_SOURCES_TAR))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_TAR"

# 8.68. Texinfo-6.7
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/texinfo.html
define BASE_SH_TEXINFO
set -e
cd /sources/texinfo
./configure --prefix=/usr --disable-static
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
#make TEXMF=/usr/share/texmf install-tex
#pushd /usr/share/info
#  rm -v dir
#  for f in *
#    do install-info $$f dir 2>/dev/null
#  done
#popd
endef
export BASE_SH_TEXINFO
lfs-base-texinfo:
	[ -d $(LFS)sources/texinfo ] || \
	    (mkdir $(LFS)sources/texinfo; tar -xC $(LFS)sources/texinfo --strip-components=1 -f $(LFS_SOURCES_TEXINFO))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_TEXINFO"

# 8.69. Vim-8.2.1361
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/vim.html
define BASE_SH_VIM
set -e
cd /sources/vim
echo '#define SYS_VIMRC_FILE "/etc/vimrc"' >> src/feature.h

make $(MAKEJOBS)
#chown -Rv tester .
#su tester -c "LANG=en_US.UTF-8 make -j1 test" &> vim-test.log
make $(MAKEJOBS) install
ln -sv vim /usr/bin/vi
#for L in  /usr/share/man/{,*/}man1/vim.1; do
#    ln -sv vim.1 $(dirname $L)/vi.1
#done
#ln -sv ../vim/vim82/doc /usr/share/doc/vim-8.2.1361

cat > /etc/vimrc << "EOF"
" Begin /etc/vimrc

" Ensure defaults are set before customizing settings, not after
source $$VIMRUNTIME/defaults.vim
let skip_defaults_vim=1 

set nocompatible
set backspace=2
set mouse=
syntax on
if (&term == "xterm") || (&term == "putty")
  set background=dark
endif

" End /etc/vimrc
EOF
endef
export BASE_SH_VIM
lfs-base-vim:
	[ -d $(LFS)sources/vim ] || \
	    (mkdir $(LFS)sources/vim; tar -xC $(LFS)sources/vim --strip-components=1 -f $(LFS_SOURCES_VIM))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_VIM"

# 8.70. Eudev-3.2.9
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/eudev.html
define BASE_SH_EUDEV
set -e
cd /sources/eudev
./configure --prefix=/usr           \
            --bindir=/sbin          \
            --sbindir=/sbin         \
            --libdir=/usr/lib       \
            --sysconfdir=/etc       \
            --libexecdir=/lib       \
            --with-rootprefix=      \
            --with-rootlibdir=/lib  \
            --enable-manpages       \
            --disable-static
make $(MAKEJOBS)
mkdir -pv /lib/udev/rules.d
mkdir -pv /etc/udev/rules.d
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
tar -xvf ../udev-lfs-20171102.tar.xz
make -f udev-lfs-20171102/Makefile.lfs install
udevadm hwdb --update
endef
export BASE_SH_EUDEV
lfs-base-eudev:
	[ -d $(LFS)sources/eudev ] || \
	    (mkdir $(LFS)sources/eudev; tar -xC $(LFS)sources/eudev --strip-components=1 -f $(LFS_SOURCES_EUDEV))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_EUDEV"

# 8.71. Procps-ng-3.3.16
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/procps-ng.html
define BASE_SH_PROCPS_NG
set -e
cd /sources/procps-ng
./configure --prefix=/usr                            \
            --exec-prefix=                           \
            --libdir=/usr/lib                        \
            --docdir=/usr/share/doc/procps-ng-3.3.16 \
            --disable-static                         \
            --disable-kill
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
mv -v /usr/lib/libprocps.so.* /lib
ln -sfv ../../lib/$$(readlink /usr/lib/libprocps.so) /usr/lib/libprocps.so
endef
export BASE_SH_PROCPS_NG
lfs-base-procps-ng:
	[ -d $(LFS)sources/procps-ng ] || \
	    (mkdir $(LFS)sources/procps-ng; tar -xC $(LFS)sources/procps-ng --strip-components=1 -f $(LFS_SOURCES_PROCPS_NG))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_PROCPS_NG"

# 8.72. Util-linux-2.36
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/util-linux.html
define BASE_SH_UTIL_LINUX
set -e
cd /sources/util-linux
mkdir -pv /var/lib/hwclock
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --docdir=/usr/share/doc/util-linux-2.36 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --without-systemd    \
            --without-systemdsystemunitdir
make $(MAKEJOBS)
#chown -Rv tester .
#su tester -c "make -k check"
make $(MAKEJOBS) install
endef
export BASE_SH_UTIL_LINUX
lfs-base-util-linux:
	[ -d $(LFS)sources/util-linux ] || \
	    (mkdir $(LFS)sources/util-linux; tar -xC $(LFS)sources/util-linux --strip-components=1 -f $(LFS_SOURCES_UTIL_LINUX))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_UTIL_LINUX"

# 8.73. E2fsprogs-1.45.6
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/e2fsprogs.html
define BASE_SH_E2FSPROGS
set -e
cd /sources/e2fsprogs
rm -rf   build
mkdir -v build
cd       build
../configure --prefix=/usr           \
             --bindir=/bin           \
             --with-root-prefix=""   \
             --enable-elf-shlibs     \
             --disable-libblkid      \
             --disable-libuuid       \
             --disable-uuidd         \
             --disable-fsck
make $(MAKEJOBS)
#make $(MAKEJOBS) check
make $(MAKEJOBS) install
chmod -v u+w /usr/lib/{libcom_err,libe2p,libext2fs,libss}.a
#gunzip -v /usr/share/info/libext2fs.info.gz
#install-info --dir-file=/usr/share/info/dir /usr/share/info/libext2fs.info
#makeinfo -o      doc/com_err.info ../lib/et/com_err.texinfo
#install -v -m644 doc/com_err.info /usr/share/info
#install-info --dir-file=/usr/share/info/dir /usr/share/info/com_err.info
endef
export BASE_SH_E2FSPROGS
lfs-base-e2fsprogs:
	[ -d $(LFS)sources/e2fsprogs ] || \
	    (mkdir $(LFS)sources/e2fsprogs; tar -xC $(LFS)sources/e2fsprogs --strip-components=1 -f $(LFS_SOURCES_E2FSPROGS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_E2FSPROGS"

# 8.74. Sysklogd-1.5.1
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/sysklogd.html
define BASE_SH_SYSKLOGD
set -e
cd /sources/sysklogd
sed -i '/Error loading kernel symbols/{n;n;d}' ksym_mod.c
sed -i 's/union wait/int/' syslogd.c
make $(MAKEJOBS)
make BINDIR=/sbin install
cat > /etc/syslog.conf << "EOF"
auth,authpriv.* -/var/log/auth.log
*.*;auth,authpriv.none -/var/log/sys.log
daemon.* -/var/log/daemon.log
kern.* -/var/log/kern.log
mail.* -/var/log/mail.log
user.* -/var/log/user.log
*.emerg *
EOF
endef
export BASE_SH_SYSKLOGD
lfs-base-sysklogd:
	[ -d $(LFS)sources/sysklogd ] || \
	    (mkdir $(LFS)sources/sysklogd; tar -xC $(LFS)sources/sysklogd --strip-components=1 -f $(LFS_SOURCES_SYSKLOGD))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_SYSKLOGD"

# 8.75. Sysvinit-2.97
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/sysvinit.html
define BASE_SH_SYSVINIT
set -e
cd /sources/sysvinit
patch -Np1 -i ../sysvinit-2.97-consolidated-1.patch
make $(MAKEJOBS)
make $(MAKEJOBS) install
endef
export BASE_SH_SYSVINIT
lfs-base-sysvinit:
	[ -d $(LFS)sources/sysvinit ] || \
	    (mkdir $(LFS)sources/sysvinit; tar -xC $(LFS)sources/sysvinit --strip-components=1 -f $(LFS_SOURCES_SYSVINIT))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_SYSVINIT"

# 8.77. Stripping Again
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/strippingagain.html
define BASE_SH_STRIP
save_lib="ld-2.32.so libc-2.32.so libpthread-2.32.so libthread_db-1.0.so"
cd /lib
for LIB in $$save_lib; do
    objcopy --only-keep-debug $$LIB $$LIB.dbg
    strip --strip-unneeded $$LIB
    objcopy --add-gnu-debuglink=$$LIB.dbg $$LIB
done

save_usrlib="libquadmath.so.0.0.0 libstdc++.so.6.0.28
             libitm.so.1.0.0 libatomic.so.1.2.0"
cd /usr/lib
for LIB in $$save_usrlib; do
    objcopy --only-keep-debug $$LIB $$LIB.dbg
    strip --strip-unneeded $$LIB
    objcopy --add-gnu-debuglink=$$LIB.dbg $$LIB
done
unset LIB save_lib save_usrlib
endef
export BASE_SH_STRIP
lfs-base-strip:
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_STRIP"

# 8.78. Cleaning Up
# http://www.linuxfromscratch.org/lfs/view/stable/chapter08/revisedchroot.html
define BASE_SH_CLEANUP
rm -f /usr/lib/lib{bfd,opcodes}.a
rm -f /usr/lib/libctf{,-nobfd}.a
rm -f /usr/lib/libbz2.a
rm -f /usr/lib/lib{com_err,e2p,ext2fs,ss}.a
rm -f /usr/lib/libltdl.a
rm -f /usr/lib/libfl.a
rm -f /usr/lib/libz.a

find /usr/lib /usr/libexec -name \*.la -delete
find /usr -depth -name $(uname -m)-lfs-linux-gnu\* | xargs rm -rf
#rm -rf /tools
#userdel -r tester
endef
export BASE_SH_CLEANUP
lfs-base-cleanup:
	chroot $(LFS) /bin/bash --login +h -c "rm -rf /tmp/*"
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_CLEANUP"

# 9.2. LFS-Bootscripts-20200818
# http://www.linuxfromscratch.org/lfs/view/stable/chapter09/bootscripts.html
define BASE_SH_BOOTSCRIPT
set -e
cd /sources/bootscript
make install
endef
export BASE_SH_BOOTSCRIPT
lfs-base-bootscript:
	[ -d $(LFS)sources/bootscript ] || \
	    (mkdir $(LFS)sources/bootscript; tar -xC $(LFS)sources/bootscript --strip-components=1 -f $(LFS_SOURCES_BOOTSCRIPTS))
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_BOOTSCRIPT"

# 10.3. Linux-5.8.3
# http://www.linuxfromscratch.org/lfs/view/stable/chapter10/kernel.html
define BASE_SH_LINUX
set -e
cd /sources/linux
#make mrproper
#make menuconfig
make $(MAKEJOBS)
make modules_install
cp -iv arch/x86/boot/bzImage /boot/vmlinuz-5.8.3-lfs-10.0
cp -iv System.map /boot/System.map-5.8.3
cp -iv .config /boot/config-5.8.3
#install -d /usr/share/doc/linux-5.8.3
#cp -r Documentation/* /usr/share/doc/linux-5.8.3
install -v -m755 -d /etc/modprobe.d
#cat > /etc/modprobe.d/usb.conf << "EOF"
#install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
#install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true
#EOF
endef
export BASE_SH_LINUX
lfs-base-kernel:
	[ -d $(LFS)sources/linux ] || \
	    (mkdir $(LFS)sources/linux; tar -xC $(LFS)sources/linux --strip-components=1 -f $(LFS_SOURCES_LINUX))
	cp repo/.config $(LFS)sources/linux/
	chroot $(LFS) /bin/bash --login +h -c "$$BASE_SH_LINUX"

lfs-base-backup: lfs-umount
	cd $(LFS) && \
	tar --exclude=tools -cJpf ../$(LFS_BACKUP_BASE) .

lfs-base-restore: lfs-umount
	cd $(LFS) && \
	tar -xpf ../$(LFS_BACKUP_BASE)

# Main Targets
lfs-prepare: lfs-prepare-hierarchy lfs-prepare-packages

lfs-toolchains:                                                                \
	lfs-regular-user lfs-sources-clean                                     \
	lfs-toolchains-binutils-pass1 lfs-toolchains-gcc-pass1                 \
	lfs-toolchains-linux-api lfs-toolchains-glibc                          \
	lfs-toolchains-libstdcpp-pass1 lfs-toolchains-m4 lfs-toolchains-ncurses\
	lfs-toolchains-bash lfs-toolchains-coreutils lfs-toolchains-diffutils  \
	lfs-toolchains-file lfs-toolchains-findutils lfs-toolchains-gawk       \
	lfs-toolchains-grep lfs-toolchains-gzip lfs-toolchains-make            \
	lfs-toolchains-patch lfs-toolchains-sed lfs-toolchains-tar             \
	lfs-toolchains-xz lfs-toolchains-binutils-pass2 lfs-toolchains-gcc-pass2

lfs-chroot:                                                                    \
	lfs-root-user lfs-mount lfs-sources-clean                              \
	lfs-chroot-prepare lfs-chroot-directories lfs-chroot-essential-files   \
	lfs-chroot-libstdcpp-pass2 lfs-chroot-gettext lfs-chroot-bison         \
	lfs-chroot-perl lfs-chroot-python lfs-chroot-texinfo                   \
	lfs-chroot-util-linux lfs-chroot-backup
	# lfs-chroot-cleanup 

lfs-base:                                                                      \
	lfs-root-user lfs-mount lfs-sources-clean                              \
	lfs-base-iana-etc lfs-base-glibc lfs-base-zlib lfs-base-bzip2          \
	lfs-base-xz lfs-base-zstd lfs-base-file lfs-base-readline lfs-base-m4  \
	lfs-base-bc lfs-base-flex lfs-base-binutils lfs-base-gmp lfs-base-mpfr \
	lfs-base-mpc lfs-base-libcap lfs-base-shadow lfs-base-gcc              \
	lfs-base-pkg-config lfs-base-ncurses lfs-base-sed lfs-base-psmisc      \
	lfs-base-gettext lfs-base-bison lfs-base-grep lfs-base-bash            \
	lfs-base-libtool lfs-base-gperf lfs-base-expat lfs-base-inetutils      \
	lfs-base-perl lfs-base-autoconf lfs-base-automake lfs-base-kmod        \
	lfs-base-elfutils lfs-base-openssl lfs-base-python lfs-base-coreutils  \
	lfs-base-diffutils lfs-base-gawk lfs-base-findutils lfs-base-less      \
	lfs-base-gzip lfs-base-iproute2 lfs-base-kbd lfs-base-libpipeline      \
	lfs-base-make lfs-base-patch lfs-base-tar lfs-base-eudev               \
	lfs-base-procps-ng lfs-base-util-linux lfs-base-e2fsprogs              \
	lfs-base-sysklogd lfs-base-sysvinit lfs-base-strip lfs-base-cleanup    \
	lfs-base-bootscript lfs-base-kernel lfs-base-backup
