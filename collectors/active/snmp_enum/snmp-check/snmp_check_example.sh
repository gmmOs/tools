
#!/bin/sh

for i in $(cat 161.list);snmp-check ${i} > target_${i}.snmp-check.response
