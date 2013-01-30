exec = $1
echo OBJS '=' $OBJS
if {no $CC} {CC = cc}
if {no $LINKER} {LINKER = $CC}

flag x +
os -d^$emuroot^`{pwd} $LINKER -o $exec $ldflags $LDFLAGS $OBJS $ldlibs $LDLIBS
