
KERNEL_HEADERS=-I/home/tp-link-hm/work/ipf_plm/ipv6_three_moed_merge/iplatform/board/model_mtk_mt76xx/gplcode/./sdk/rt288x/linux/kernels/linux-2.6.36.x/

AR=ar
RANLIB=mipsel-buildroot-linux-uclibc-ranlib

CC=mipsel-buildroot-linux-uclibc-gcc
CFLAGS = -Wall -g   $(KERNEL_HEADERS)

prefix=/usr
exec_prefix=/usr
includedir=${prefix}/include
libdir=${exec_prefix}/lib

libbridge_SOURCES= \
	libbridge_devif.c \
	libbridge_if.c \
	libbridge_init.c \
	libbridge_misc.c 

libbridge_OBJECTS=$(libbridge_SOURCES:.c=.o)

all:	libbridge.a

# At present there is no need for a bridge-utils-devel package
install:


clean:
	rm -f *.o libbridge.a

libbridge.a:	$(libbridge_OBJECTS)
	$(AR) rcs $@ $(libbridge_OBJECTS)
	$(RANLIB) $@

%.o: %.c libbridge.h libbridge_private.h
	$(CC) $(CFLAGS) $(INCLUDE) -c $<

libbridge_compat.o:	libbridge_compat.c if_index.c
	$(CC) $(CFLAGS) -c libbridge_compat.c

