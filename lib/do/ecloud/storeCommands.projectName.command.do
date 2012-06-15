#!/dis/sh

#server = --server app011.build.prod.services.fsglobal.net

projdir = $1
project = `{echo $projdir | sed 's,__, ,g'}
mkdir $projdir
ectool $server getProject $"project | dcr > $projdir^.xml

ectool $server getProcedures $"project | sed -n -f /lib/sed/procedureNames | dcr > $projdir^/procedureNames

echo '#!/dis/sh' > $projdir^/mkprocdir
sed 's, ,__,g;s,^,mkdir '''^$"projdir^'/,;s,$,'',' $projdir^/procedureNames >> $projdir^/mkprocdir
./^$projdir^/mkprocdir

echo '#!/dis/sh' > $projdir^/getprocxml
sed -f /lib/sed/dupname $projdir^/procedureNames | sed 's,(.*)//(.*),ectool '^$"server^' getProcedure '''^$"project^''' ''\1'' | dcr > '^$projdir^'/\2.xml,' >> $projdir^/getprocxml
./^$projdir^/getprocxml

echo '#!/dis/sh' > $projdir^/getstepxml
sed -f /lib/sed/dupname $projdir^/procedureNames | sed 's,(.*)//(.*),ectool '^$"server^' getSteps '''^$"project^''' ''\1'' | dcr > '^$projdir^'/\2/steps.xml,' >> $projdir^/getstepxml
./^$projdir^/getstepxml

stepsxml = `{du -an $projdir | grep steps.xml}

cwd = `{pwd}
apply {
	xml = $1
	dir = `{echo $xml | sed 's,/[^/]+$,,'}
	proc = `{echo $dir | sed 's,^[^/]+/,,;s,__, ,g'}
	cd $dir
	grep stepName steps.xml | sed -n -f /lib/sed/stepNames | dcr > stepNames

	echo '#!/dis/sh' > mkstepdir
	sed 's, ,__,g;s,^,mkdir '',;s,$,'',' stepNames >> mkstepdir
	./mkstepdir

	echo '#!/dis/sh' > getcommands
	sed -f /lib/sed/dupname stepNames | sed 's,(.*)//(.*),ectool '^$"server^' getProperty ''/projects['^$"project^']/procedures['^$"proc^']/steps[\1]/command'' --expand false | dcr > \2/command,' >> getcommands
	./getcommands

	echo '#!/dis/sh' > setcommands
	sed -f /lib/sed/dupname stepNames | sed 's,(.*)//(.*),ectool '^$"server^' setProperty ''/projects['^$"project^']/procedures['^$"proc^']/steps[\1]/command'' --valueFile \2/command,' >> setcommands
	# DO NOT EXECUTE
	cd $cwd
} $stepsxml
