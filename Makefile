ifneq ($(KERNELRELEASE),)
	obj-m :=sbull.o
else
	PWD := $(shell pwd)
	KERNELDIR ?=/lib/modules/$(shell uname -r)/build
default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules
endif
