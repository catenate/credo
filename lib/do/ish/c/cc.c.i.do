#!/dis/sh
i = $1
(stem ext c) = `{crext c $i}

if {no $cc} {cc = cc}
if {
	flag x  +
	os -d $osdir $cc $cflags $cppflags -o $i -E $c
} {
	echo $i
}
