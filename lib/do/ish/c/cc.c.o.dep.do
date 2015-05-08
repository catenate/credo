#!/dis/sh
load std

dep = $1
o = `{echo $dep | sed 's,\.dep,,'}
(stem ext c) = `{cre/ext c $srcdir^$o}

cre/adddep $o /env/cc /env/cflags /env/cppflags
cre/adddep $o $c
#cre/adddep $o `{/lib/do/c/findh $c}
