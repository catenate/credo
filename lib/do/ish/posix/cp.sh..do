#!/dis/sh
next = $1
sh = $next^.sh

if {
	flag x +
	cp $sh $next
	chmod a+x $next
} {
	echo ./^$next
}
