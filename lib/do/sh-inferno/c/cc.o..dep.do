#!/dis/sh
load std

dep = $1
bin = `{echo $dep | sed 's,\.dep$,,'}
o = $bin^.o

cresh/adddep $bin /env/ars /env/cc /env/cflags /env/ldflags /env/objs
cresh/adddep $bin $o
#cresh/adddep $bin `{/lib/do/c/coneed $o}
