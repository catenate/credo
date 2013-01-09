#!/dis/sh
class = $1
(stem ext java) = `{crext java $class}

if {no $javac} {javac = javac}
if {
	flag x  +
	os -T $javac $java
} {
	echo os -T java $stem
}
