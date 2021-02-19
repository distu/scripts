#! /bin/sh

me=`basename "$0"`

if [ "$#" -ne 2 ]; then
	echo "Uso: $me <Final do IP inicio> <Final do IP fim>";
	echo "Ex: $me 11 21";
	echo "";
	exit;
fi

for i in $(eval echo {$1..$2}); 
do 
	ssh wilherlt@"xx.xx.xx.$i" df -h | if [ $i = 71 ]; then echo "$(grep -E 'mapper|File') --> xx.xx.xx.$i"; else echo "$(grep 'mapper') --> xx.xx.xx.$i"; fi; 
done
