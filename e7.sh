while [ 1 ];

do 
echo
echo cheaking for run away process...

CPU_USAGE=$(uptime | cut -d"," -f4 |cut -d":" - f2 | cut -d " " -f2 | sed -e " s/\.//g") 
CPU_USAGE_THREHOULD = 800
PROCESS=$(ps aux r)
TOPPEROCESS=$(ps -eo pid -eo pcpu -eo command | sort -k 2 - r | grep -v PID | head -n 1)

if [$CPU_USAGE -gt $CPU_USAGE_THREHOULD]; then
 kill -9 $(ps -eo pid | sort -k 1 -r | grep -v PID |head -n 1) #orginally kill-9 $(ps -eo pcpu | sort -k 1 -r | grep  -v %CPU |  head -n 1)
 kill -9 $TOPPROCESS
 echo system overloading
 echo top-most process killed $TOPPROCESS
 echo Top-most process killed $CPU_LOAD
fi
exit 0;
sleep 1;
done
 
 
 
 
