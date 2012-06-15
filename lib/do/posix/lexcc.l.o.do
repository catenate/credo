#!/dis/sh
o = $1
(stem ext l) = `{crext l $o}

if {no $cc} {cc = c99}
if {no $cflags} {cflags = -O}
if {no $lex} {lex = lex}

if {
	flag x +
	os -T $lex $lflags $l
	os -T $cc $cflags -c lex.yy.c
	rm -f lex.yy.c
	mv lex.yy.o $o
} {
	echo 'objs = $objs '^$o > $o^.relay
}
