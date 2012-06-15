#!/dis/sh
exe = $1
allc = `{ls *.c}
if {no $cc} {cc = cc}
if {
	flag x  +
	os -T $cc $cflags $cppflags -o $exe $allc
} {
	echo os -T ./$exe
}
