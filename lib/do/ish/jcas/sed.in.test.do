#!/dis/sh
test = $1
(stem ext in) = `{crext in $test}
out = $stem^.out
cat $in | sed -f /lib/sed/^$stem > $test
flag x +
diff $out $test
