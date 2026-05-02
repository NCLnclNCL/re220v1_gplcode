#
# Copyright (c) 2013 The Linux Foundation. All rights reserved.
#

include $(TOPDIR)/rules.mk
include $(INCLUDE_DIR)/kernel.mk
include $(INCLUDE_DIR)/package.mk

PKG_NAME:=qca-wl
PKG_VERSION:=1.0
PKG_RELEASE:=1


ifneq ($(CONFIG_PACKAGE_kmod-qca-wifi-perf),)
  ifneq ($(CONFIG_PACKAGE_QCA_WLAN_DIR),)
    export QCA_WLAN_DIR:=$(CONFIG_PACKAGE_QCA_WLAN_DIR)
  endif
endif

define KernelPackage/qca-wifi-perf/Default
  SECTION:=kernel
  DEPENDS:=
  CATEGORY:=Kernel modules
  SUBMENU:=Proprietary QCA WiFi driver
  TITLE:=Kernel wireless driver for QCA chipsets
endef

define KernelPackage/qca-wifi-perf/Default/description
 This package contains the proprietary wireless driver for the QCA chipset.
endef

define KernelPackage/qca-wifi-perf
$(call KernelPackage/qca-wifi-perf/Default,)
  TITLE+= (normal version)
endef

define KernelPackage/qca-wifi-perf/description
$(call KernelPackage/qca-wifi-perf/Default/description)
endef

define KernelPackage/qca-wifi-perf/config
	config PACKAGE_QCA_WLAN_DIR
		string "qca wireless driver directory path"
		default ""
		help
          This is config for the qca wireless driver directory path.

endef


define Build/Prepare
	true
endef

define Build/Compile
	true
endef

define Build/InstallDev
	true
endef


$(eval $(call KernelPackage,qca-wifi-perf))