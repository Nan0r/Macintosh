#!/bin/sh
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Support/networksetup -setsearchdomains AirPort company.com example.com
/System/Library/CoreServices/RemoteManagement/ARDAgent.app/Contents/Support/networksetup -setsearchdomains Ethernet company.com example.com
/usr/sbin/networksetupnetworksetup -setsearchdomains AirPort company.com example.com
/usr/sbin/networksetupnetworksetup -setsearchdomains Ethernet company.com example.com
exit 0
