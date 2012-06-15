#!/dis/sh
jarfile = $1

if {no $jar} {jar = jar}
if {
	flag x  +
	os -T $jar -cf $jarfile *.class
} {
	echo os -T $jar -tf $jarfile
}
