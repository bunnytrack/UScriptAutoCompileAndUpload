#!/bin/bash

# ====================================================================
# Unreal Tournament UScript auto-compile and upload script
# --------------------------------------------------------------------
# Author:      Dizzy <dizzy at bunnytrack.net>
# Description: Compiles the last-modified UScript project in your UT 
#              directory (requires UMake.exe), uploads the resulting 
#              .u file via ssh to a remote server, restarts the remote 
#              instance of UT, and launches local UT for testing.
# Version:     2017-10-20
# Website:     https://bunnytrack.net/
# ====================================================================

# For debugging, uncomment:
# set -xv

# --------------------------------------------------
# Config
# --------------------------------------------------
winUtDir="C:\UnrealTournament\\";
sshIdFile="/cygdrive/c/private_key.rsa";
sshUser="user";
sshHost="example.com";
sshPort="22";
remoteUTPath="/var/ut/";
remoteInitFile="/var/ut/ucc.init";
remoteUTHost="example.com";
remoteUTPort="7777";
# --------------------------------------------------

utDir=`cygpath "${winUtDir}"`;

echo "Compiling latest UT project...";

"$utDir"UMake.exe /auto "$winUtDir";

# Get most recently modified .u file
recentFile=`ls -rt1 "$utDir/System/" | egrep \.u$ | tail -n 1`;

read -rsp $'Compiled. Press any key to upload and test or Ctrl+C to exit...\n' -n1 key;

echo "Uploading $utDir/System/$recentFile...";

scp -P "$sshPort" -i "$sshIdFile" "$utDir/System/$recentFile" "$sshUser"@"$sshHost":"$remoteUTPath"System;

echo "Restarting remote UT server...";

ssh -f -p "$sshPort" -i "$sshIdFile" "$sshUser"@"$sshHost" "$remoteInitFile"' restart';

echo "Starting local UT for testing...";

"$utDir"System/UnrealTournament.exe "$remoteUTHost"':'"$remoteUTPort"' &';

echo "Done";

exit;
