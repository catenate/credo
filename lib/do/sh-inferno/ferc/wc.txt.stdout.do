txt = $1
dep = `{cat $txt.dep | sed 's,.*	,,'}
echo File $dep has `{wc -l $dep | dos awk '{print $1}'} lines.
