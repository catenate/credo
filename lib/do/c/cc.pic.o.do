#!/dis/sh
o = $1
(stem ext c) = `{crext c $o}

if {no $cc} {cc = cc}
if {
	flag x  +
	os -T $cc -fPIC $cflags $cppflags -c $c
} {
	echo 'objs = $objs '^$o > $o^.relay
}
