o = $1
C = `{echo $o | sed 's,\.o$,.C,'}
if {no $CXX} {CXX = c++}

if {
	flag x +
	os -d^$emuroot^`{pwd} $CXX -o $o -c $CXXFLAGS $SRC_CXXFLAGS $INCDIRS $SRC_INCDIRS $SRC_DEFS $DEFS $C
} {
	echo 'OBJS = $OBJS '^$o > $o^.relay
}
