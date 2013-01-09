#!/dis/sh
exe = $1
css = `{sed -n '/\.cs$/s,.*	,,p' $exe^.dep}

if {no $csc} {csc = csc}
if {
	flag x  +
	os -T $csc $csflags -target:exe -out:^$exe $css $refs
} {
	echo os -T ./$exe
}
