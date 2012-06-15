#!/dis/sh
c = $1
(stem ext l) = `{crext l $c}

if {no $lex} {lex = lex}
if {
	flag x +
	os -T $lex $lflags $l
	mv lex.yy.c $c
} {
	echo $c
}
