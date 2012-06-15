#!/dis/sh
exe = $1
(stem ext cs) = `{crext cs $exe}

if {no $csc} {csc = csc}
if {
	flag x  +
	os -T $csc $csflags $cs
} {
	echo os -T ./$exe
}
