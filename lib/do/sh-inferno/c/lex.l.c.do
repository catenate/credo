#!/dis/sh
c = $1
(sum ext l) = `{crext l $c}
if {no $lex} {lex = lex}

if {
	flag x  +
	os -d $osdir $lex $lflags $l
	mv lex.yy.c $c
} {
	echo 'src = $src '^$c > $c^.relay
}
