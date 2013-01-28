#!/dis/sh
dep = $1
bin = `{echo $dep | sed 's,\.dep$,,'}
o = $bin^.o

adddep $bin /env/LINK /env/LDFLAGS /env/LIBS /env/OBJECTS
adddep $bin $o
#adddep $bin `{/lib/do/gnumake/coneed $o}
