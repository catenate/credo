#!/dis/sh
test = $1
out = `{echo $test | sed 's,\.test$,.out,'}
credo testallc > $test
flag x +
diff $out $test
