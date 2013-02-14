KERNEL_DIR=/android/kernel/kernel_huawei_u8220

obj-m := frandom.o
PWD := $(shell pwd)
default:
	$(MAKE) ARCH=arm CROSS_COMPILE=/android/toolchain/android-ndk-r5c/toolchains/arm-eabi-4.4.0/prebuilt/linux-x86/bin/arm-eabi- -C $(KERNEL_DIR) SUBDIRS=$(PWD) modules
clean:
	$(MAKE) -C $(KERNEL_DIR) SUBDIRS=$(PWD) clean
