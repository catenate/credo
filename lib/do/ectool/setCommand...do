#!/dis/sh
server = --server app011.build.prod.services.fsglobal.net
project = SLIDE-1.107-storeAuthors
procedure = ComponentPipeline_maven
step = $1
echo = echo

if {
	flag x +
	$echo ectool $server modifyStep $project $procedure $step --commandFile $step
} {
	echo $step
}
