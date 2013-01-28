#!/dis/sh
c = $1
(sum ext y) = `{crext y $c}
if {no $yacc} {yacc = yacc}

if {
	flag x  +
	os -d^$emuroot^`{pwd} $yacc -d $yflags $y
	mv y.tab.c $c
} {
	echo 'src = $src '^$c > $c^.relay
}
