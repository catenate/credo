#!/dis/sh
bin = $1
if {no $cc} {cc = cc}

if {
	flag x  +
	os -d^$emuroot^`{pwd} $cc $cflags -o $bin $objs $ars $ldflags
} {
	echo os -d^$emuroot^`{pwd} ./$bin
}
