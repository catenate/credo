#!/dis/sh
bin = $1
if {no $cc} {cc = cc}
if {
	flag x  +
	os -d $osdir $cc $cflags $cppflags -o $bin $bin^.c
} {
	echo os -d $osdir ./$bin
}
