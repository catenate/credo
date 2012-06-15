#!/dis/sh
next = $1
c = $next^.c

if {no $cc} {cc = c99}
if {no $cflags} {cflags = -O}
if {
	flag x +
	os -T $cc $cflags $ldflags -o $next $c
} {
	echo os -T ./^$next
}
