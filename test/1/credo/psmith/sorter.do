#!/dis/sh
out = $1
c = `{sed -n '/\.c$/s,.*[	 ]+,,p' $out^.dep}
echo cc -o $out $c
