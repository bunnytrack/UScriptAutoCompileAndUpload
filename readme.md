# UScriptAutoCompileAndUpload

## Author
* Dizzy

## Description
An automation script for UnrealScript development which performs the following steps:
1. Compiles the last-modified UScript project in your UT directory
2. Uploads the resulting compiled .u file via ssh to a remote UT server
3. Restarts the remote instance of UT
4. Launches a local copy of UT for play-testing

Designed to make UScript development more efficient.

## Prerequisites
Written for use via Cygwin or Cygwin Portable on Windows.  
Requires `UMake.exe` and a remote Unreal Tournamnent server accessible via SSH.

## General Usage
1. Edit the "Config" section of the script to specify your own settings/directories/etc.
2. Run the script:
    * On Windows: run via a Cygwin console: `./UScriptAutoCompileAndUpload.sh`

## Version
2017-10-20

## Website
https://bunnytrack.net
