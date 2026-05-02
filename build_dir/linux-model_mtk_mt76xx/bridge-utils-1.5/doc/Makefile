
DESTDIR=
KERNEL_HEADERS=-I/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/./sdk/rt288x/linux/kernels/linux-2.6.36.x/

INSTALL=/usr/bin/install -c

prefix=/usr
exec_prefix=/usr
bindir=/usr/bin
sbindir=/usr/sbin
mandir=/usr/man

SUBDIRS=libbridge brctl

all:

clean:

install:
	mkdir -p $(DESTDIR)$(mandir)/man8
	$(INSTALL) -m 644 brctl.8 $(DESTDIR)$(mandir)/man8
