csv = $1
pat = `{echo $csv | sed 's,\.csv$,,'}
dep = `{cat $csv.dep | sed 's,.*	,,'}
grep $pat $dep > $csv
