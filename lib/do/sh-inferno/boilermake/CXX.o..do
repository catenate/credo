exec = $1
if {no $CXX} {CXX = c++}
if {no $LINKER} {LINKER = $CXX}

flag x +
os -d^$emuroot^`{pwd} $LINKER -o $exec $ldflags $LDFLAGS $OBJS $ldlibs $LDLIBS
