#!/bin/bash
upserver=$(for server in `cat /tmp/servers.txt`
do nc -zvw3 $server 22 | awk '/succeeded/ {print $3}'
done 2>/dev/null)
for host in $upserver
do
echo -n "$host: "
ssh $host uptime | awk '{print $3,$4}' | sed 's/,//'
done | column -t > /tmp/uptime-report.out
cat /tmp/uptime-report.out | awk ' $2 >= 90' > /tmp/uptime-report-1.out
cat /tmp/uptime-report-2.out | mail -s "Linux Servers Uptime Report" "daygeek@gmail.com"
