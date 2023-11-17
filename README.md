# Keenetic Policy Changer
Simple bat script for change Policy setting on keenetic-based routers.

### Prerequisites
* plink

### Installation
Download [Plink](https://putty.org.ru/files/putty-0.73-ru-17/plink.exe) and place "plink.exe" file to the directory "C:\Program Files\Plink".

Download "ChangePolicy.bat" and place where you want.

Edit "ChangePolicy.bat", where:
* keenetic_ip=_ip

Change "_ip" on ip address in your router.
Example: ```192.168.0.1```


* user=_user

Change "_user" on user with admin rights in your router.
Example: ```admin```

* password=_password

Change "_password" on password for user in your router.
Example: ```qwerty```

* mac=_mac

Change "_mac" on mac-address of the device for which you will need to change the policy.
Example: ```c0:95:8d:db:23:33```

* policyid=_number_of_policy

Change "_number_of_policy" on policy number to be set for the device.
Example: ```1```


### How do I find out the policy numbers?
Connect to router with ssh and send command:
```show ip policy```
The policy numbers will be before the names of these policies. When editing the script settings, ONLY the POLICY NUMBER should be set. Without the "Policy" variable.

### How do I find the mac address of the device?
Just go to the router's web panel and look in the list of registered clients.

### When can I use it?
If a VPN client is configured on your router and there is a network in the policy settings that uses this connection, you can quickly turn on/off the VPN connection for a specific device simply by running the script. No one bothers you to duplicate this script and configure everything so that the first script runs a policy with vpn, and the second disables it.
