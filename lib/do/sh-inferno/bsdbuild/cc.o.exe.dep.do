#!/dis/sh
dep = $1
exe = `{echo $dep | sed 's,\.dep,,'}
(stem ext o) = `{crext o $exe}

adddep $exe /env/cc /env/cflags /env/ldflags /env/objs /env/libs
adddep $exe $o
adddep $exe `{/lib/do/bsdbuild/coneed $o}
