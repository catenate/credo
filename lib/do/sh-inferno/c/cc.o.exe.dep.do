#!/dis/sh
dep = $1
exe = `{echo $dep | sed 's,\.dep,,'}
(stem ext o) = `{crext o $exe}

adddep $exe /env/ars /env/cc /env/cflags /env/ldflags /env/objs
adddep $exe $o
adddep $exe `{/lib/do/c/coneed $o}
