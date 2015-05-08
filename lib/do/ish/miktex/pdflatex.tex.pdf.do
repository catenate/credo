#!/dis/sh
pdf = $1
(sum tex) = `{grep '\.tex$' $pdf^.dep}

pdflatex = '/n/C/Program Files (x86)/MiKTeX␣2.9/miktex/bin/pdflatex'

if {
	flag x  +
	os -T $pdflatex $tex
} {
	plumb $pdf
}
