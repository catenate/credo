#!/dis/sh
out = $1
c = `{sed -n '/\.c$/s,.*[	 ]+,,p' $out^.dep}
cat $c > $out
echo cc -o $out $c >> $out
cat $out
