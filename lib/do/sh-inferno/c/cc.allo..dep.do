#!/dis/sh
dep = $1
bin = `{echo $dep | sed 's \.dep$  '}
o = `{ls *.o >[2]/dev/null}

cre/adddep $bin /env/ars /env/cc /env/cflags /env/ldflags /env/objs
if {! no $o} {cre/adddep $bin $o}
#cre/adddep $bin `{/lib/do/c/coneed $o}
