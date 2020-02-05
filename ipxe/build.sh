#!/bin/sh
set -e
(cd docker && docker build -t ipxebuild .)
[ -d ipxe ] || git clone git://git.ipxe.org/ipxe.git
# Work around a bug in building host utils in ipxe
sed -i -e '/^HOST_CFLAGS/ s/\$(WORKAROUND_CFLAGS)//' ipxe/src/Makefile.housekeeping
# Make sure we have enough module space for vmware.
sed -i -e "s/MAX_MODULES 8/MAX_MODULES 100/g" ipxe/src/arch/x86/image/multiboot.c
for t in lkrn undionly snponly_x86_64 snponly_arm64; do
    docker run -v $PWD/ipxe:/src/ipxe:rw ipxebuild /bin/build_ipxe.sh "$t"
done
cp ipxe/bin/ipxe.pxe ../embedded/assets/ipxe.pxe
cp ipxe/bin/ipxe-x86_64.efi ../embedded/assets/ipxe.efi
cp ipxe/bin/ipxe-arm64.efi ../embedded/assets/ipxe-arm64.efi
cp ipxe/bin/ipxe.lkrn ../embedded/assets/ipxe.lkrn
git add ../embedded/assets/ipxe*
