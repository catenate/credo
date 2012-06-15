#!/dis/sh
out = $1
(stem ext in) = `{crext in $out}
cat $in | sed -f /lib/sed/^$stem > $out
echo $out
