#!/dis/sh
a = $1
if {no $ar} {ar = ar}
if {
	flag x  +
	os -d^$emuroot^`{pwd} $ar $arflags -rs $a $objs
} {
	echo 'ars = $ars '^$credir^$a > $a^.relay
}
