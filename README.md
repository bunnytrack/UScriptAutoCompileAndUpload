# UScriptAutoCompileAndUpload

## Author
* Dizzy

## Description
Compiles the last-modified UScript project in your UT directory via UMake.exe, uploads the resulting .u file via ssh to a remote server, restarts the remote instance of UT, and launches local UT for testing.

## Prerequisites
Requires `UMake.exe` and a remote Unreal Tournamnent server accessible via SSH.
If you are using Windows, you will need Cygwin or Cygwin Portable to run this Bash script.

## General Usage
1. Edit the "Config" section of the script to specify your own settings/directories/etc.
2. Run the script:
    * On Linux: `./UScriptAutoCompileAndUpload.sh`
    * On Windows: run via Cygwin

## Version
2017-10-20

## Website
https://www.bunnytrack.net
