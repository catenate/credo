#!/dis/sh
o8 = $1
(stem ext go) = `{crext go $o8}
if {
	flag x  +
	os -T 8g $go
} {
	echo 'o8s = $o8s '^$o8 > $o8^.relay
}
