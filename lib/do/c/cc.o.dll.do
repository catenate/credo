#!/dis/sh
dll = $1
stem = `{echo $dll | sed 's,^lib,,;s,\.dll$,,'}
if {no $cc} {cc = cc}

if {
	flag x  +
	os -T $cc -shared $ccflags -o $dll $objs
} {
	echo 'ldflags = $ldflags -L'^$credir^' -l'^$stem > $dll^.relay
}
