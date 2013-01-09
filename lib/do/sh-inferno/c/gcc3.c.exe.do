#!/dis/sh
exe = $1
c = `{sed -n '/\.c$/s,.*[	 ]+,,p' $exe^.dep}
if {
	flag x  +
	os -T gcc-3 $cflags $cppflags -o $exe $c
} {
	echo os -T $exe
}
