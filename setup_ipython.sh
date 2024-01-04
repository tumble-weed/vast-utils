#!/bin/bash
mypath=`realpath ${BASH_SOURCE[0]}`
mydir="$(dirname "$mypath")"
cp $mydir/ipython_startup.ipy /root/.ipython/profile_default/startup/
ls /root/.ipython/profile_default/startup/
