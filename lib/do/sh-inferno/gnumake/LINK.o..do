#!/dis/sh
load std

TARGET = $1
if {no $LINK} {LINK = g++}

if {
	flag x  +
	os -d^$emuroot^`{pwd} $LINK $LDFLAGS -o $TARGET $OBJECTS $LIBS
} {
	echo os -d^$emuroot^`{pwd} ./$TARGET
}
