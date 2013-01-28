#!/dis/sh
o = $1
(sum ext cpp) = `{crext cpp $o}
if {no $CXX} {CXX = g++}

if {
	flag x  +
	os -d^$emuroot^`{pwd} $CXX $CXXFLAGS -c $cpp
} {
	echo 'OBJECTS = $OBJECTS '^$o > $o^.relay
}
