#!/bin/sh

slcli vs create --hostname=fetou02 --domain=sltest.com --public --cpu=1 --memory=1024 --os=CENTOS_6_64 --disk=25 --disk=25 --network=100 --datacenter=tok02 --billing=hourly