# Copyright (C) 1989, 1992 Free Software Foundation, Inc.
# written by Douglas C. Schmidt (schmidt@ics.uci.edu)
#
# This file is part of GNU GPERF.

AR = ar
AR_FLAGS = cr
RANLIB = ar s
MAKEINFO = makeinfo
CC = gcc -g
CFLAGS =
XTRAFLAGS = 
LIBS = -lgpp
O = .o
A = .a

WRAP_C_INCLUDES = 

OBJECTS  = options$O iterator$O main$O gen-perf$O key-list$O list-node$O\
           hash-table$O bool-array$O read-line$O std-err$O version$O # new$O

PROGRAM = gperf.exe

.cc$O:
	$(CC) $(CFLAGS) $(NOSTDINC) $(HDEFINES) -DLO_CAL \
	-I. -I../../libg++/iostream -I../../libg++/src \
	-I../../libg++/g++-include $(XTRAFLAGS) -c $<

all: $(PROGRAM)

gperf.exe: $(OBJECTS)
	$(CC) -o $@ $(OBJECTS) $(LIBS)
