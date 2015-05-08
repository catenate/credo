#!/dis/sh
dodep = $1
jardir = `{echo $dodep | sed 's,\.dodep$,,'}
jarpath = `{du -a | sed -n '/'^$jardir^'$/s, *^[0-9]+ +,,p'}

dodep java javac pathjava class $jarpath^/Main.class

dodep java jar dir jar $jardir^.jar

cd $jarpath
rmdep Main.class Main.java
adddep Main.class *.java
