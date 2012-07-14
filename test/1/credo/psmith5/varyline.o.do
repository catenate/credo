#!/dis/sh
o = $1
(stem ext c) = `{crext c $o}

if {no $edition} {
	echo error: set edition to home or prof
	s=revert
}
if {~ $edition home} {cppflags = $cppflags -DEDITION_HOME}
if {~ $edition prof} {cppflags = $cppflags -DEDITION_PROF}

if {no $lang} {
	echo error: set lang to english or latin
	s=revert
}
if {~ $lang english} {cppflags = $cppflags -DLANG_EN}
if {~ $lang latin} {cppflags = $cppflags -DLANG_LA}

if {no $cc} {cc = cc}

if {no $s} {
	if {
		flag x  +
		os -T $cc $cflags $cppflags -c $c
	} {
		echo 'objs = $objs '^$o > $o^.relay
	} {
		status revert
	}
} {
	status $s
}
