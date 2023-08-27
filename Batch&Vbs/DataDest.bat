::=========================================================
:: It is a data destruction application.
::========================================================


@echo off
title Destroyer v.1
mode con cols=80 lines=20

::define Function => : 

:parola
cls
color 0b
set /p pass=Enter a Parola:
if %pass% == 1881 (goto truee) else (goto wrong)


:wrong
cls
color 0c
mode con cols=80 lines=20
echo Parola is Wrong !
set /a count+=1
set /a let=3-%count%

if %count% == 3 goto exit
echo %let% You have the right to try !
pause >nul
goto parola


:truee
cls
color 0a
echo Login Successful. Welcome.
timeout /nobreak /t 2 >nul
echo Deleted data is destroyed...
cipher /w:c:
msg * Completed
exit



:exit
cls
color 0c
mode con cols=80 lines=10
echo Checking out...
msg * You need to know the password I'am Sorry
exit



pause