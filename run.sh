#!/bin/sh
rm -rf out
mkdir -p out/boot
mkdir -p out/rootfs
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j4
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j4 zImage modules
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabi- -j4 INSTALL_MOD_PATH=out/rootfs modules_install
cp arch/arm/boot/dts/suniv-f1c100s-licheepi-nano.dtb out/boot
cp arch/arm/boot/zImage out/boot
