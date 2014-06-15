# Copyright (C) 1989, 1992 Free Software Foundation, Inc.
# written by Douglas C. Schmidt (schmidt@ics.uci.edu)
#
# This file is part of GNU GPERF.

AR = emxomfar
AR_FLAGS = cr
RANLIB = emxomfar s
MAKEINFO = makeinfo
CC = gcc -O -Zomf -Zmt -s
CFLAGS =
XTRAFLAGS =
O = .obj
A = .lib

all:
	cd src & $(MAKE) "CC=$(CC)" "CFLAGS=$(CFLAGS)" "XTRAFLAGS=$(XTRAFLAGS)" \
		"AR=$(AR)" "RANLIB=$(RANLIB)" "O=$O" "A=$A"

check:
	cd tests & $(MAKE) "CC=$(CC)" "CFLAGS=$(CFLAGS)" "XTRAFLAGS=$(XTRAFLAGS)" \
		 "AR=$(AR)" "RANLIB=$(RANLIB)" "O=$O" "A=$A" check

info: gperf.info

gperf.info: gperf.texinfo
	$(MAKEINFO) -o gperf.info gperf.texinfo

