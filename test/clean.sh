#!/bin/bash
: << 'clean.sh'
    Version: 0.0
    Authors: sysadmin@vhalholl
    Description: cleanup testing dir
    Dependencies:
clean.sh
rm -rf bundle*
rm apthogen
rm netinstall
rm templates
rm .log*
rm .list
rm .vimrc
