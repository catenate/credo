#!/dis/sh
exe = $1
o = `{sed -n '/\.o$/s,.*[	 ]+,,p' $exe^.dep}
if {
	flag x  +
	os -d $osdir gcc-3 $cflags -o $exe $o
} {
	echo os -d $osdir $exe
}
