#!/dis/sh
load std

dep = $1
bin = `{echo $dep | sed 's,\.dep$,,'}
o = $bin^.o

cre/adddep $bin /env/ars /env/cc /env/cflags /env/ldflags /env/objs
cre/adddep $bin $o
#cre/adddep $bin `{/lib/do/c/coneed $o}
