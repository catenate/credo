#!/dis/sh
bin = $1
if {! no $credir} {bin = $credir/$bin}
if {no $cc} {cc = cc}

if {
	flag x  +
	os -d $osdir $cc $cflags -o $bin $objs $ars $ldflags
} {
	echo os -d $osdir $bin
}
