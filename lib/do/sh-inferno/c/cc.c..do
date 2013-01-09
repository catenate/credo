#!/dis/sh
bin = $1
if {no $cc} {cc = cc}
if {
	flag x  +
	os -d^$emuroot^`{pwd} $cc $cflags $cppflags -o $bin $bin^.c
} {
	echo os -d^$emuroot^`{pwd} ./$bin
}
