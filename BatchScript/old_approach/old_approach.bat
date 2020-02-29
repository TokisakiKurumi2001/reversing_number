@echo off

set /a num = %1%
set /a res = 0
call :ReverseNumber num, res
echo %res%
exit /B %ERRORLEVEL%

:ReverseNumber

set /a num = %~1
set /a sum = 0
set /a digit = 0

:SimpleLoop

set /a digit = %num% %% 10
set /a sum = %sum% * 10 + %digit%
set /a num /= 10

if %num% gtr 0 (	
	goto :SimpleLoop
)

set /a %~2 = %sum%
exit /B 0