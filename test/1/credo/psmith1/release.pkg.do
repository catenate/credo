#!/dis/sh
package = $1
files = `{sed 's,.*[	 ]+,,' $package^.dep}
grep -n . $files > $package
echo $package
