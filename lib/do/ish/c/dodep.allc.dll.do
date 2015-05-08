#!/dis/sh
dodep = $1
(stem ext library) = `{crext dll $dodep}
stems = `{ls *.c | sed 's,\.c$,,'}

dodep c cc pic o default.o
rm default.o.dep
apply {
	stem = $1
	dodep c cc c o $stem^.o
	rm $stem^.o.do
	headers = `{sed -n '/^#include "/;{;s,^#include ",,;s,".*$,,;p;}' $stem^.c}
	adddep $stem^.o $headers
} $stems

dodep c cc o dll $library
apply {adddep $library $1^.o} $stems

rm -f installib.dep
adddep installib $library
echo '#!/dis/sh
cyglibhome = /n/C/cygwin/home/jcatena/lib
if {cp' $library '$cyglibhome} {echo os -d $osdir nm $cyglibhome^/'^$library^'}' > installib.do
echo credo installib

os = `{ls *.c | sed 's,\.c$,.o,'}
echo '#!/dis/sh' > clean.do
echo rm -f $os $library >> clean.do
echo credo clean
