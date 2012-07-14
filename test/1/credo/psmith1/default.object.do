#!/dis/sh
object = $1
source = `{echo $object | sed 's,\.object$,.source,'}
sed 's,source,object,' $source > $object
echo $object
