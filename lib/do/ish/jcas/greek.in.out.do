#!/dis/sh
out = $1
in = `{echo $out | sed 's,\.out$,.in,'}
cat $in | sed -f /lib/sed/greek > $out
echo $out
