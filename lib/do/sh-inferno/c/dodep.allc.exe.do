#!/dis/sh
dodep = $1
(stem ext program) = `{crext exe $dodep}
stems = `{ls *.c | sed 's,\.c$,,'}

dodep c cc c o default.o
rm default.o.dep
apply {
	stem = $1
	dodep c cc c o $stem^.o
	rm $stem^.o.do
	headers = `{sed -n '/^#include "/;{;s,^#include ",,;s,".*$,,;p;}' $stem^.c}
	adddep $stem^.o $headers
} $stems

dodep c cc o exe $program
apply {adddep $program $1^.o} $stems

rm -f binstall.dep
adddep binstall $program
echo '#!/dis/sh
cygbinhome = /n/C/cygwin/home/jcatena/bin
if {cp' $program '$cygbinhome} {echo os -T $cygbinhome^/'^$program^'}' > binstall.do
echo credo binstall

os = `{ls *.c | sed 's,\.c$,.o,'}
echo '#!/dis/sh' > clean.do
echo rm -f $os $program >> clean.do
echo credo clean
