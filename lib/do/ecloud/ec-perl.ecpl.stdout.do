#!/dis/sh
stdout = $1
ecpl = `{echo $stdout | sed 's,\.stdout$,.ecpl,'}
flag x +
os -T ec-perl $ecpl
