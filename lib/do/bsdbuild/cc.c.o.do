#!/dis/sh
o = $1
(sum c) = `{grep '\.c$' $o^.dep}

if {no $cc} {cc = cc}
if {no $cflags} {cflags = -O2 -g}

if {
	flag x  +
	os -T $cc $cflags $cppflags -o $o -c $c
} {
	echo 'objs = $objs '^$o > $o^.relay
}
