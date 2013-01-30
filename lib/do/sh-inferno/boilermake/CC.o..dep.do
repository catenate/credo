#!/dis/sh
dep = $1
exec = `{echo $dep | sed 's,\.dep$,,'}
o = `{echo $exec | sed 's,$,.o,'}

adddep $exec /env/CC /env/LINKER /env/ldflags /env/LDFLAGS /env/OBJS /env/ldlibs /env/LDLIBS
adddep $exec $o
