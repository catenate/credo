#!/dis/sh
load std

dep = $1
o = `{echo $dep | sed 's,\.dep,,'}
(stem ext c) = `{cresh/ext c $srcdir^$o}

cresh/adddep $o /env/cc /env/cflags /env/cppflags
cresh/adddep $o $c
#cresh/adddep $o `{/lib/do/c/findh $c}
