@echo off

set num=%1%
set res=
call :ReverseNumber num, res
echo %res%
exit /B %ERRORLEVEL%

:ReverseNumber
set /a str=%~1
set return_str=

:ReverseLoop

if not [%str%] == [] (
	set return_str=%return_str%%str:~-1%
	set str=%str:~0,-1%
	goto :ReverseLoop
)
set /a %~2 = %return_str%

exit /B 0