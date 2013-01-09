#!/dis/sh
ecpl = $1
ecmd = `{echo $ecpl | sed 's,\.ecpl$,.ecmd,'}
sed -f $ecmd.sed $ecmd > $ecpl
echo $ecpl
