#!/dis/sh
exe = $1
if {
	flag x  +
	os -T 8l $o8s
} {
	mv 8.out.exe $exe
	echo os -T ./^$exe
}
