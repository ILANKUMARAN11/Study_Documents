@ECHO OFF
TITLE Kill Port

set /p port="ENTER PORT TO BE KILLED ::::'
ECHO %port%

FOR /F "tokens=5 delims= " %%P IN ('netstat -ano ^| findstr :%port%') DO taskkill /PID %%P /F

PAUSE
