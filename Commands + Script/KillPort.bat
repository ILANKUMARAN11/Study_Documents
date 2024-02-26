@ECHO OFF
TITLE Kill Port

set /p port="ENTER THE PORT NUMBER THAT NEED TO BE KILLED :::: "
ECHO you have entered the port number ::: %port%

FOR /F "tokens=5 delims= " %%P IN ('netstat -ano ^| findstr :%port%') DO taskkill /PID %%P /F

PAUSE
