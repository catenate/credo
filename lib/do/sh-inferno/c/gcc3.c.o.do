#!/dis/sh
o = $1
c = `{sed -n '/\.c$/s,.*[	 ]+,,p' $o^.dep}
if {
	flag x  +
	os -d $osdir gcc-3 $cflags $cppflags -c $c
} {
	echo $o
}
