#!/dis/sh
prog = $1

if {no $cc} {cc = cc}
if {no $cflags} {cflags = -O2 -g}

if {
	flag x  +
	os -T $cc $cflags $ldflags -o $prog $objs $libs
} {
	echo os -T ./$prog
}
