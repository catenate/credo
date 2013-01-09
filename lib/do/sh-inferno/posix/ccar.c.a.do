#!/dis/sh
a = $1
(stem ext c) = `{crext c $a}

if {no $ar} {ar = ar}
if {no $arflags} {arflags = -rv}
if {no $cc} {cc = c99}
if {no $cflags} {cflags = -O}

if {
	flag x  +
	os -T $cc -c $cflags $c
	os -T $ar $arflags $a $stem^.o
	rm -f $stem^.o
} {
	echo 'ars = $ars '^$credir^$a > $a^.relay
}
