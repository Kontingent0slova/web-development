@echo off
@cd %~dp0
ren *.exe *.cgi
copy *.cgi C:\server2go\cgi-bin
del /f  /q *.cgi

