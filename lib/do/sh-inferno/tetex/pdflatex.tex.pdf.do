#!/dis/sh
pdf = $1
(sum tex) = `{grep '\.tex$' $pdf^.dep}

if {
	flag x  +
	pdflatex $tex
} {
	plumb $pdf
}
