#!/dis/sh
test = $1
in = `{echo $test | sed 's,\.test$,.in,'}
out = `{echo $test | sed 's,\.test$,.out,'}
cat $in | sed -f /lib/sed/greek > $test
flag x +
diff $out $test
