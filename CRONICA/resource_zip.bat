@echo off
setlocal

set TARGET_FOLDER=resource\
set ZIP_NAME=resource.zip

powershell -Command Compress-Archive -Path '%TARGET_FOLDER%' -DestinationPath '%ZIP_NAME%' -Force

echo COMPLETED %ZIP_NAME%
endlocal
pause