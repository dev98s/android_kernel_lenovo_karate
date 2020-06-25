#!/bin/bash

#Android Toolchain PATH
export ARCH=arm64
export SUBARCH=arm64
export CCOMPILE=$CROSS_COMPILE
export CROSS_COMPILE=aarch64-linux-android-
export PATH=$PATH:/home/suraj/Toolchains/aosp_aarch64-linux-android-4.9.x/bin		 #Enter your Toolchain Path

#Make Kernel
make clean && make mrproper
make karate_defconfig
make menuconfig						#Optional,just use it to confirm configs befor compiling
make -j4 							#Set number according to your cpu cores


#A simple build script file, Can't find the original one i made where it directly zipped the image.gz-dtb to a flashable zip.Anyways,this one 
#works fine too.Just run this script and you will find the zImage in the dir - arch/arm/boot. Just pack that in a twrp zip and its good to go!
