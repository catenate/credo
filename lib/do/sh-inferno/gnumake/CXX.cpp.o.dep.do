#!/dis/sh
dep = $1
o = `{echo $dep | sed 's,\.dep,,'}
(stem ext cpp) = `{crext cpp $credir^$o}

adddep $o /env/CXX /env/CXXFLAGS
adddep $o $cpp
#adddep $o `{/lib/do/gnumake/findh $cpp}
