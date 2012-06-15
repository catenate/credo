#!/dis/sh
o = $1
(sum c) = `{grep '\.c$' $o^.dep}

if {no $cc} {cc = cc}

if {
	flag x  +
	os -T $cc $cflags $cppflags -c $c
} {
	echo 'objs = $objs '^$o > $o^.relay
}
