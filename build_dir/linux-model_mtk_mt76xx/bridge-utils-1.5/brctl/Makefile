
KERNEL_HEADERS=-I/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/./sdk/rt288x/linux/kernels/linux-2.6.36.x/

CC=mipsel-buildroot-linux-uclibc-gcc
CFLAGS= -Wall  
LDFLAGS=-L/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/staging_dir/target-mipsel-openwrt-linux-uclibc/usr/lib -L/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/staging_dir/target-mipsel-openwrt-linux-uclibc/lib -Wl,-rpath-link,/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/staging_dir/target-mipsel-openwrt-linux-uclibc/usr/lib -L/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/./toolchain/buildroot-gcc463/usr/lib/ -L/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/./toolchain/buildroot-gcc463/usr/mipsel-buildroot-linux-uclibc/sysroot/usr/lib/ 
INCLUDE=-I../libbridge $(KERNEL_HEADERS) 
LIBS= -L ../libbridge -lbridge 

prefix=/usr
exec_prefix=/usr
bindir=/usr/bin
sbindir=/usr/sbin
mandir=/usr/man

INSTALL=/usr/bin/install -c


common_SOURCES= brctl_cmd.c brctl_disp.c 
brctl_SOURCES=  brctl.c $(common_SOURCES)

common_OBJECTS= $(common_SOURCES:.c=.o)
brctl_OBJECTS= $(brctl_SOURCES:.c=.o)

OBJECTS= $(common_OBJECTS) $(brctl_OBJECTS)

PROGRAMS= brctl 


all:	$(PROGRAMS)

install: $(PROGRAMS)
	mkdir -p $(DESTDIR)$(sbindir)
	$(INSTALL) -m 755 $(PROGRAMS) $(DESTDIR)$(sbindir)

brctl:	$(brctl_OBJECTS) ../libbridge/libbridge.a
	$(CC) $(LDFLAGS) $(brctl_OBJECTS) $(LIBS) -o brctl

%.o: %.c brctl.h
	$(CC) $(CFLAGS) $(INCLUDE) -c $< 

clean:
	rm -f *.o brctl core

