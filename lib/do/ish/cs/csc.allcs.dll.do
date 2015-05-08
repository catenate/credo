#!/dis/sh
dll = $1
css = `{sed -n '/\.cs$/s,.*	,,p' $dll^.dep}

if {no $csc} {csc = csc}
if {
	flag x  +
	os -T $csc $csflags -target:library -out:^$dll $css
} {
	echo 'refs = $refs -reference:'^$dll > $dll^.relay
}
