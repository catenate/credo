#!/dis/sh
dep = $1
bin = `{echo $dep | sed 's,\.dep$,,'}

cre/adddep $bin /env/ars /env/cc /env/cflags /env/ldflags /env/objs
