#!/bin/sh
HOW=""

kill_child() {
pid=$1
echo "kill ${HOW} ${pid}"
for i in `ps -ef| awk '$3 == '${pid}' { print $2 }'`
do
	kill_child $i
done
echo "${pid} killed."
}
while [[ $# > 1 ]]
do
	HOW="${HOW}$1 "
	shift
done
kill_child $1
