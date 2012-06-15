#!/dis/sh
next = $1
o = $next^.o

if {no $cc} {cc = cc}
if {
	flag x  +
	os -T $cc $ldflags $target_arch $o $loadlibes $ldlibs -o $next
} {
	echo os -T ./^$next
}
