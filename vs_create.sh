#!/bin/sh

slcli vs create --hostname=fetou02 --domain=sltest.com --public --cpu=1 --memory=1024 --os=CENTOS_6_64 --disk=25 --disk=25 --vlan-public=896487 --vlan-private=896489 --network=100 --datacenter=tok02 --billing=hourly