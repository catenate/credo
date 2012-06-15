#!/dis/sh
so = $1
if {no $cc} {cc = cc}

if {
	flag x  +
	os -T $cc -shared $ccflags -o $so $objs
} {
	echo 'ldflags = $ldflags '^$credir^$so > $so^.relay
}
