#!/dis/sh
o = $1
(stem ext c) = `{crext c $o}

if {no $cc} {cc = cc}
if {
	flag x  +
	os -d $osdir $cc -fPIC $cflags $cppflags -c $c
} {
	echo 'objs = $objs '^$o > $o^.relay
}
