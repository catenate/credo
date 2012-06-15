#!/dis/sh
o = $1
(stem ext c) = `{crext c $o}

if {no $cc} {cc = c99}
if {no $cflags} {cflags = -O}

if {
	flag x +
	os -T $cc $cflags -c $c
} {
	echo 'objs = $objs '^$o > $o^.relay
}
