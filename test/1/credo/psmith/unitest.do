#!/dis/sh
rm $1^.ut.* redont
mkdodep c unitest c c $1^.ut.c
mkdodep cygwin gcc-3 c exe $1^.ut.exe
echo '0	'^$1^'.c' >> $1^.ut.exe.dep
credo $1^.ut.exe
os -T $1^.ut.exe
if {~ $status '* '^$2} {status pass} {status fail}
