while [ 1 ]
do							
echo "cheahing for run-away process..."
CPU_USAGE=$(uptime | cut -d "," -f4 | cut -d ":" -f2 | cut  -d " " -f2 | sed -e "s/\.//g")
CPU_USAGE_TRESHOULD=4	
PROCESS=$(ps aux r)
TOPPROCESS=$(ps -eo pid -eo pcpu -eo command | sort -k 2 -r | grep -v PID | head -n 1)
if[ $CPU_USAGE -gt $CPU_USAGE_THRESOULD
