#!/dis/sh
dep = $1
bin = `{echo $dep | sed 's,\.dep$,,'}
o = $bin^.o

adddep $bin /env/ars /env/cc /env/cflags /env/ldflags /env/objs
adddep $bin $o
#adddep $bin `{/lib/do/c/coneed $o}
