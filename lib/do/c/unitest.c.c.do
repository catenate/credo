#!/dis/sh
utc = $1
c = `{echo $utc | sed 's,\.ut\.c,.c,'}
function = `{sed -n 's,.*([-A-Za-z_]+)\(.*\).*{.*,\1,p' $c}
echo 'int main(void) { return '^$function^'();}' > $utc
echo $utc
