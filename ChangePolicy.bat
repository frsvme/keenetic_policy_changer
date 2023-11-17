@echo off
set PATH=C:\Program Files\Plink;%PATH%
set keenetic_ip=_ip
set user=_user
set password=_password
set mac=_mac
set policyid=_number_of_policy

plink -ssh %user%@%keenetic_ip% -pw %password% "ip hotspot host %mac% policy Policy%policyid%"