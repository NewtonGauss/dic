#!/bin/sh

exec="../dic"
if [ ! -f "$exec" ]; then
	echo "Executable file [$exec] not found" 1>&2
	exit 1
fi
if [ ! -x "$exec" ]; then
	echo "File [$exec] cannot be executed" 1>&2
	exit 1
fi

$exec Test.java
diff --ignore-tab-expansion --ignore-trailing-space --ignore-space-change --ignore-all-space\
	--ignore-blank-lines --brief Test_.java test_files/Test_.java

diff_status=$?
if [ $diff_status == 0 ]; then
	rm Test_.java
else
	echo "Generated files were not removed to check the diff"
fi
