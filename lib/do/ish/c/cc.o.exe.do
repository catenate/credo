#!/dis/sh
exe = $1
if {no $cc} {cc = cc}
if {
	flag x  +
	os -d $osdir $cc $cflags -o $exe $objs $ars $ldflags
} {
	echo os -d $osdir ./$exe
}
