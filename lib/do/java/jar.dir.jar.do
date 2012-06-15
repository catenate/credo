#!/dis/sh
jarfile = $1
jarpath = `{echo $jarfile | sed 's,\.jar$,,'}
jarpath = `{du -a | sed -n '/'^$jarpath^'$/s, *^[0-9]+ +,,p'}
hpath = `{hp `{pwd}}

if {no $jar} {jar = jar}
if {
	flag x  +
	os -d^$hpath $jar -cf $jarfile $jarpath
} {
	echo os -T $jar -tf $jarfile '|' grep '''\.class'''
}
