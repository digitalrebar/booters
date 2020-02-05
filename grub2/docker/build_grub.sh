#!/bin/bash
MODS=(
      all_video
      cat
      chain
      configfile
      echo
      ext2
      fat
      gzio
      http
      net
      normal
      part_gpt
      part_msdos
      reboot
      regexp
      search
      serial
      sleep
      test
      tftp
      xfs
      )
case "$1" in
    grubamd64.efi)
        MODS+=(efinet)
        FORMAT=x86_64-efi;;
    grubarm64.efi)
        MODS+=(efinet)
        FORMAT=arm64-efi;;
    grubpc.bin)
        MODS+=(pxe pxechain)
        FORMAT=i386-pc;;
esac
grub2-mkimage --format=$FORMAT \
              --output=/target/grub2/$1 \
              --prefix=/ \
              --config=/working/grub.cfg \
              "${MODS[@]}"
