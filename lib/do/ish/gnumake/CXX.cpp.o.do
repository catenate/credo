#!/dis/sh
load std
load string

o = $1
(stem ext) = ${splitr $o .}
cpp = $credir^$stem^'cpp'

if {no $CXX} {CXX = g++}

if {
	flag x  +
	os -d^$emuroot^`{pwd} $CXX $CXXFLAGS $CPPFLAGS -c $cpp
} {
	echo 'OBJECTS = $OBJECTS '^$o > $o^.reenv
}
