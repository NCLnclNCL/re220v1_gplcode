##################################################################################################
#
#	kernel build
#
##################################################################################################

.PHONY:kernel_build kernel_clean

HOST_NCPU=1
GEN_MTD_PARTITOIN=$(CONFIG_UTIL_PATH)/gen_mtd_partition

kernel_clean:
	cd $(KERNELPATH) &&  $(MAKEARCH) clean

kernel_prep:
	if [ -d $(KERNELPATH) ]; then \
	sed "s,^CONFIG_CROSS_COMPILE=.*,CONFIG_CROSS_COMPILE=\"${TOOLPATH}/bin/mipsel-linux-\",g" $(KERNEL_CONFIG_FILE) > $(KERNELPATH)/.config; \
	if ! test -f "$(PARTITION_CONF)"; then echo "$(PARTITION_CONF) not found"; return 1; fi;\
	if ! test -f "$(KCONFIG_SOURCE_FILE)"; then echo "$(KCONFIG_SOURCE_FILE) not found"; return 1; fi; \
	cat "$(PARTITION_CONF)" | $(GEN_MTD_PARTITOIN) -n rt2880_partitions fs-uboot os-image file-system radio >$(KERNELPATH)/include/generated/mtd_partition.h; \
	cp "$(KCONFIG_SOURCE_FILE)" $(KERNELPATH)/ralink/Kconfig.source; \
	$(MAKEARCH) -C $(KERNELPATH) prepare ; \
	rm -fr $(KERNELPATH)/include/asm; \
	rm -fr $(KERNELPATH)/arch/mips/include/asm/rt2880; \
	rm -fr $(KERNELPATH)/include/linux/autoconf.h; \
	ln -sf ../arch/mips/include/asm $(KERNELPATH)/include/asm; \
	ln -sf ./mach-ralink $(KERNELPATH)/arch/mips/include/asm/rt2880; \
	ln -sf ../../include/generated/autoconf.h $(KERNELPATH)/include/linux/autoconf.h; \
	$(MAKEARCH) -C $(KERNELPATH) dep; \
	fi

kernel_build: kernel_prep
	@echo " Making Kernel Build Version $(KERNEL)" at `date`
	$(MAKEARCH) -j$(HOST_NCPU) -C $(KERNELPATH) $(KERNELTARGET)
	cd $(KERNELPATH)/arch/$(KERNELARCH)/boot && \
	cp $(KERNELTARGET) $(KERNELPATH)/../ && \
	rm -rf $(KERNELTARGET).lzma && \
	$(RPT_TOPDIR)/util/lzma/bin/lzma --best --keep $(KERNELTARGET) && \
	cp $(KERNELTARGET).lzma  $(KERNELPATH)/../$(KERNELTARGET).gz && \
	cp $(KERNELPATH)/vmlinux $(KERNELPATH)/../vmlinux
