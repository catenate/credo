#!/dis/sh
bin = $1
if {no $cc} {cc = cc}
if {
	$crecho flag x  +
	$crecho os -d $osdir $cc $cflags $cppflags -o $bin $bin^.c
} {
	echo os -d $osdir ./$bin
}
