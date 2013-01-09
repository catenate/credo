#!/dis/sh
o = $1
(stem ext c) = `{crext c $o}

if {no $(c++c)} {c++c = c++c}
if {
	flag x  +
	os -T $(c++c) $(c++flags) -c $c
} {
	echo 'objs = $objs '^$o > $o^.relay
}
