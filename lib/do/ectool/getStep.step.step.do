#!/dis/sh
stepfile = $1
ifs = '/
'
(project procedure stepname) = `{sed -n '1p' $stepfile | sed 's,^# ,,;s, - ,/,g'}
ifs = ' 	
'
if {os -T ectool getStep $"project $"procedure $"stepname | sed 's,$,,' | sed '1,/<broadcast/d;/^<\/command/,$d' | sed '1s, *<command>,,' | sed 's,&amp;,&,g;s,&lt;,<,g;s,&gt;,>,g' > $stepfile} {
	echo $stepfile
} {
	rm -f $stepfile $stepfile^.sum
}
