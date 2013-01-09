#!/dis/sh
target = $1
deps = `{sed 's,^.*[ 	]+,,' $target^.dep}
apply {
	dep = $1
	file = `{echo $dep | sed 's,^.*/,,'}
	$echo rm $file
} $deps
