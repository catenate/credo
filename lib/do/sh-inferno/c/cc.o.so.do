#!/dis/sh
so = $1
if {no $cc} {cc = cc}

if {
	flag x  +
	os -d $osdir $cc -shared $ccflags -o $so $objs
} {
	echo 'ldflags = $ldflags '^$credir^$so > $so^.relay
}
