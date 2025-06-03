This project contains pyhton and robot framework script to extract the Junos OS version from Juniper SRX device.

Files info:
-----------
1.version.py : It is a python script that connected to a Juniper srx and retrieves the OS version by using RPC
2.version.robot : It is robot file which just took function from .py and run this script using test automation format

How to run:
-----------
Use "export" command to give device details
"robot version.robot" --- run using this command

Note:
----
Make sure both the files are present at same location

Sample Output:(from log) 
-------------
KEYWORD show . Get Version ${HOST}, ${USER}, ${PASSWORD}
Start / End / Elapsed:	20250603 16:33:30.882 / 20250603 16:33:32.215 / 00:00:01.333
16:33:31.556	INFO	[host name of host session-id 18870] initialized: session-id=18870 | server_capabilities=<dict_keyiterator object at 0x7f73beabdae0>	
16:33:31.556	INFO	[host name of host session-id 18870] Requesting 'ExecuteRpc'	
16:33:32.215	INFO	<Element junos-version at 0x7f73bead0600>
25.2
version is greater than  24.2
