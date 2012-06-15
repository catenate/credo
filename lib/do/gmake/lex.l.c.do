#!/dis/sh
c = $1
(stem ext l) = `{crext l $c}

if {no $lex} {lex = lex}
if {no $rm} {rm = rm -f}

if {
	$rm $c
	flag x +
	os -T $lex $lflags -t $l > $c
} {
	echo $c
}
