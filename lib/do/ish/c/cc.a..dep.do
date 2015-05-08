#!/dis/sh
dep = $1
bin = `{echo $dep | sed 's,\.dep$,,'}
a = $bin^.a

adddep $bin /env/ars /env/cc /env/cflags /env/ldflags
adddep $bin $a
