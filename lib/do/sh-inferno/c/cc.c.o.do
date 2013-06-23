#!/dis/sh
o = $1
(sum ext c) = `{cre/ext c $o}
if {no $cc} {cc = cc}

if {
	flag x +
	os -d $osdir $cc $cflags $cppflags -c $c
} {
	echo 'objs = $objs '^$o > $o^.reenv
}
