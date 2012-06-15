#!/dis/sh
next = $1
c = $next^.c

if {no $cc} {cc = cc}
if {
	flag x  +
	os -T $cc $cflags $cppflags $ldflags $target_arch $c $loadlibes $ldlibs -o $next
} {
	echo os -T ./^$next
}
