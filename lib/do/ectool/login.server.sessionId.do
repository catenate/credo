#!/dis/sh
hostName = `{ectool getProperty /server/hostName | sed 's,\..*,,' | tr '[A-Z]' '[a-z]'}
if {! ~ $1 $hostName} {
	os -d`{hp `{pwd}} ectool --server $1 login jcatena $password | grep sessionId | sed -f /lib/sed/dehtml | sed 's,[ ],,g' > $1
}
echo $1
