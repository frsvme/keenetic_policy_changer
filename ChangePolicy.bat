@echo off
set PATH=C:\Program Files\Plink;%PATH%
set keenetic_ip=*ip*
set user=*user*
set password=*password*
set mac=*mac*
set policyid=*number_of_policy*

plink -ssh %user%@%keenetic_ip% -pw %password% "ip hotspot host %mac% policy Policy%policyid%"