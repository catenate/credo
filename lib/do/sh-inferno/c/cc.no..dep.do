#!/dis/sh
dep = $1
bin = `{echo $dep | sed 's,\.dep$,,'}

adddep $bin /env/ars /env/cc /env/cflags /env/ldflags /env/objs
