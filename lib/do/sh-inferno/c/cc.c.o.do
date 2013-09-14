#!/dis/sh
o = $1
c = `{sfix %.o %.c $o}
if {! no $credir} {o = $credir/$o}

if {no $cc} {cc = cc}

if {
	flag x +
	os -d $osdir $cc $cflags $cppflags -c $c -o $o
} {
	echo 'objs = $objs '^$o > $o^.reenv
}
