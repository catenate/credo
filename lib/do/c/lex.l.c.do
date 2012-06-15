#!/dis/sh
c = $1
(sum l) = `{grep '\.l$' $c^.dep}

if {no $lex} {lex = lex}

if {
	flag x  +
	os -T $lex $lflags $l
	mv lex.yy.c $c
} {
	echo $c
}
