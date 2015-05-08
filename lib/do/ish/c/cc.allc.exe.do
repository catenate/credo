#!/dis/sh
exe = $1
allc = `{ls *.c}
if {no $cc} {cc = cc}
if {
	flag x  +
	os -d $osdir $cc $cflags $cppflags -o $exe $allc
} {
	echo os -d $osdir ./$exe
}
