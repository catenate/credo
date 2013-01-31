o = $1
c = `{echo $o | sed 's,\.o$,.c,'}
if {no $CC} {CC = cc}

if {
	flag x +
	os -d^$emuroot^`{pwd} $CC -o $o -c $CFLAGS $SRC_CFLAGS $INCDIRS $SRC_INCDIRS $SRC_DEFS $DEFS $c
} {
	echo 'OBJS = $OBJS '^$o > $o^.relay
}
