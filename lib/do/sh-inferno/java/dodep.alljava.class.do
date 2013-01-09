#!/dis/sh
dodep = $1
(stem ext class) = `{crext class $dodep}

dodep java javac java class $class
rmdep $class $stem^.java
adddep $class *.java
