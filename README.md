# UScriptAutoCompileAndUpload

## Author
* Dizzy

## Description
A shell script which compiles the last-modified UScript project in your UT directory, uploads the resulting .u file via ssh to a remote server, restarts the remote instance of UT, and launches a local copy of UT for testing.

Designed to make UT mod-making/testing more efficient.

## Prerequisites
Requires `UMake.exe` and a remote Unreal Tournamnent server accessible via SSH.
Written for use via Cygwin or Cygwin Portable on Windows.

## General Usage
1. Edit the "Config" section of the script to specify your own settings/directories/etc.
2. Run the script:
    * On Windows: run via a Cygwin console: `./UScriptAutoCompileAndUpload.sh`

## Version
2017-10-20

## Website
https://www.bunnytrack.net
