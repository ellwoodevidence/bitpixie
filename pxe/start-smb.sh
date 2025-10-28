#!/bin/sh

scriptpath="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
smbserver="$(command -v smbserver.py || command -v impacket-smbserver)"

sudo "$smbserver" -smb2support smb "$scriptpath/smb"
