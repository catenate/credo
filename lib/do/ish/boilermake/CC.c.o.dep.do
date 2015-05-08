#!/dis/sh
dep = $1
o = `{echo $dep | sed 's,\.dep$,,'}
c = `{echo $o | sed 's,\.o$,.c,'}
d = `{echo $o | sed 's,\.o$,.d,'}

adddep $o /env/CC /env/CFLAGS /env/SRC_CFLAGS /env/INCDIRS /env/SRC_INCDIRS /env/SRC_DEFS /env/DEFS

if {no $CC} {CC = cc}
os -d^$emuroot^`{pwd} $CC -c -MM -MF $d $CFLAGS $SRC_CFLAGS $INCDIRS $SRC_INCDIRS $SRC_DEFS $DEFS $c
adddep $o `{sed -n '/^'^$o^'/,/^[^ ]/p' $d | sed 's,.*: ,,;s,\\$,,'}
