#!/dis/sh
load std
load string

dep = $1
o = `{echo $dep | sed 's,\.dep,,'}
(stem ext) = ${splitr $o .}
cpp = $credir^$stem^'cpp'

adddep $o /env/CXX /env/CXXFLAGS /env/CPPFLAGS
adddep $o $cpp
#adddep $o `{/lib/do/gnumake/findh $cpp}
