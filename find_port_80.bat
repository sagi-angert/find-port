@echo off
netstat -ano > netstat.txt
findstr ":80.*LISTENING" netstat.txt
if %errorlevel% == 1 (
    echo No server listening on port 80
) else (
    echo Found a server listening on port 80:
)
PAUSE