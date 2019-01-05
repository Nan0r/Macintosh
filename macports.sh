#!/bin/bash
xcode-select --install
usermod -G admin $USER
wget https://distfiles.macports.org/MacPorts/MacPorts-2.3.1-10.9-Mavericks.pkg
installer -allowUntrusted -verboseR -pkg MacPorts-2.3.1-10.9-Mavericks.pkg
port -v selfupdate
