#!/dis/sh
a = $1
if {no $ar} {ar = ar}
if {
	flag x  +
	os -d $osdir $ar $arflags -rs $a $objs
} {
	echo 'ars = $ars '^$srcdir^$a > $a^.relay
}
