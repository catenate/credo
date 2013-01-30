#!/dis/sh
dep = $1
o = `{echo $dep | sed 's,\.dep$,,'}
C = `{echo $o | sed 's,\.o$,.C,'}
d = `{echo $o | sed 's,\.o$,.d,'}

adddep $o /env/CXX /env/CXXFLAGS /env/SRC_CXXFLAGS /env/INCDIRS /env/SRC_INCDIRS /env/SRC_DEFS /env/DEFS

if {no $CXX} {CXX = c++}
os -d^$emuroot^`{pwd} $CXX -c -MM -MF $d $CXXFLAGS $SRC_CXXFLAGS $INCDIRS $SRC_INCDIRS $SRC_DEFS $DEFS $C
adddep $o `{sed -n '/^'^$o^'/,/^[^ ]/p' $d | sed 's,.*: ,,;s,\\$,,'}
