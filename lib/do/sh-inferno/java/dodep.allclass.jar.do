#!/dis/sh
dodep = $1
(stem ext jarfile) = `{crext jar $dodep}
classes = `{ls *.java | sed 's,\.java$,.class,'}

dodep java jar allclass jar $jarfile
rmdep $jarfile class
adddep $jarfile $classes
