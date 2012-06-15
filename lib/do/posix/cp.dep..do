#!/dis/sh
target = $1
deps = `{sed 's,^.*[ 	]+,,' $target^.dep}
apply {
	dep = $1
	file = `{echo $dep | sed 's,^.*/,,'}
	if {! cmp $dep $file >/dev/null >[2=1]} {$echo cp $dep .}
} $deps
exit
