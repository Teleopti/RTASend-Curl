::Pre-reqs: https://chocolatey.org/packages/curl
@echo off
SET ROOTDIR=%~dp0
SET ROOTDIR=%ROOTDIR:~0,-1%
SET payload=StateBatch.xml
set curlExe=C:\ProgramData\chocolatey\lib\curl\tools\curl_x64\curl.exe
set RTAUri=http://localhost/TeleoptiWFM/RTA/TeleoptiRtaService.svc

"%curlExe%" -k -X POST -H "Content-Type: text/xml" -H "SOAPAction: \"http://tempuri.org/ITeleoptiRtaService/SaveBatchExternalUserState\"" --data-binary @"%ROOTDIR%\%payload%" %RTAUri%
echo.
echo %errorlevel%
pause