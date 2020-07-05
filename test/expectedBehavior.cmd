@echo off
echo.
echo Patch behavior by recreating symbolic link.
echo.
@echo on
del helloWorld.cmd
mklink  helloWorld.cmd ..\component\helloWorld.cmd
@echo off
echo.
echo Command now properly reports file as a symbolic link.
echo.
@echo on
dir /al
@echo off
echo.
echo Executing command through link now properly forwards
echo arguments (Arg2-1 Arg2-2) to actual command and
echo produces expected behavior.
echo.
@echo on
helloWorld.cmd Arg2-1 Arg2-2
@echo off