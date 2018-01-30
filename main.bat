@echo off & setlocal
color fc
goto Main

:Main
cls
set method=(%random%*10/32768)+1
