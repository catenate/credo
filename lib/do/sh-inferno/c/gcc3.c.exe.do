#!/dis/sh
exe = $1
c = `{sed -n '/\.c$/s,.*[	 ]+,,p' $exe^.dep}
if {
	flag x  +
	os -d $osdir gcc-3 $cflags $cppflags -o $exe $c
} {
	echo os -d $osdir $exe
}
