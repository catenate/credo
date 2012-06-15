#!/dis/sh
stepfile = $1
echo = echo
ecmd = `{echo $stepfile | sed 's,\.step$,.ecmd,'}
ifs = '/
'
(project procedure stepname) = `{sed -n '1p' $ecmd | sed 's,^# ,,;s, - ,/,g'}
ifs = ' 	
'
if {$echo os -T ectool modifyStep $"project $"procedure $"stepname --commandFile $ecmd >/dev/null} {
	cp $ecmd $stepfile
	echo $stepfile
} {
	rm $stepfile
}
