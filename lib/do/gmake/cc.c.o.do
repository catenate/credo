#!/dis/sh
o = $1
(stem ext c) = `{crext c $o}

if {no $cc} {cc = cc}

if {
	flag x  +
	os -T $cc $cflags $cppflags $target_arch -c -o $o $c
} {
	echo 'objs = $objs '^$o > $o^.relay
}
