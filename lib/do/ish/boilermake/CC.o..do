exec = $1
if {no $CC} {CC = cc}
if {no $LINKER} {LINKER = $CC}

flag x +
os -d^$emuroot^`{pwd} $LINKER -o $exec $ldflags $LDFLAGS $OBJS $ldlibs $LDLIBS
