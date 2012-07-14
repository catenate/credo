#!/dis/sh
executable = $1
object = `{sed -n '/\.object$/s,.*[	 ]+,,p' $executable^.dep}
sed 's,^,linked ,' $object > $executable
echo $executable
