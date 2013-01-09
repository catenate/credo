#!/dis/sh
o = $1
(sum ext c) = `{crext c $o}
if {no $cc} {cc = cc}

if {
	flag x  +
	os -d^$emuroot^`{pwd} $cc $cflags $cppflags -c $c
} {
	echo 'objs = $objs '^$o > $o^.relay
}
