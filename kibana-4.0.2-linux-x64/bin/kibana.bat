@echo off

SETLOCAL

set SCRIPT_DIR=%~dp0
for %%I in ("%SCRIPT_DIR%..") do set DIR=%%~dpfI

set NODE=%DIR%\node\node.exe
set SERVER=%DIR%\src\bin\kibana.js
set NODE_ENV="production"
set CONFIG_PATH=%DIR%\config\kibana.yml

TITLE Kibana Server 4.0.2

"%NODE%" "%SERVER%" %*

:finally

ENDLOCAL


