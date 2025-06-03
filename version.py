from jnpr.junos import Device
from lxml import etree
from pprint import pprint
from jnpr.junos.utils.config import Config
import time
import re

dev=None

def get_version(host,username,password):
    global dev
    dev=Device(host=host,user=username,password=password)  #logging to the box using credentials
    dev.open()
    version_info = dev.rpc.get_software_information()     #getting output usng rpc method
    f0=version_info.find("junos-version")     
    print(f0)
    version=f0.text.strip()
    print(float(version[0:4]))
    if float(version[0:4])==24.2:
        print("version is 24.2")
    else:
        print("version is greater than  24.2")
