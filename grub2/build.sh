#!/usr/bin/env bash
set -e
(cd docker && docker build -t grubbuild .)
mkdir -p grub2
for t in grubamd64.efi grubarm64.efi grubpc.bin; do
    docker run -v $PWD/grub2:/target/grub2:rw grubbuild /bin/build_grub.sh "$t"
done
cp grub2/grubamd64.efi ../embedded/assets/grubamd64.efi
cp grub2/grubarm64.efi ../embedded/assets/grubarm64.efi
cp grub2/grubpc.bin ../embedded/assets/grub.pxe
git add ../embedded/assets/grub*.efi ../embedded/assets/grub.pxe
