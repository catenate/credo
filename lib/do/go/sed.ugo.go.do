#!/dis/sh
go = $1
(stem ext ugo) = `{crext ugo $go}
if {
	flag x  +
	sed -f /lib/do/go/toascii.sed $ugo | os -T gofmt > $go
} {
	echo $go
}
