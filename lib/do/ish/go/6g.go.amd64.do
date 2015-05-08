amd64 = $1
go = $amd64^.go
o6 = $amd64^.6
if {no $6g} {6g = 6g}
if {no $6l} {6l = 6l}

if {
	flag x  +
	$6g $go
	$6l -o $amd64 $o6
	rm $o6
} {
	echo $"test^$amd64 $testopt
}
