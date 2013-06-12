#!/dis/sh
dep = $1
o = `{echo $dep | sed 's,\.dep,,'}
(stem ext c) = `{crext c $srcdir^$o}

adddep $o /env/cc /env/cflags /env/cppflags
adddep $o $c
#adddep $o `{/lib/do/c/findh $c}
