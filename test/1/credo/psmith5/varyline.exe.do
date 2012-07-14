#!/dis/sh
exe = $1
if {no $cc} {cc = cc}

if {
	flag x  +
	os -T $cc $cflags -o $exe $objs $ars $ldflags
} {
	echo os -T ./$exe
}
