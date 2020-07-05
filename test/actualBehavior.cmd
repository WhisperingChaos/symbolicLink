@echo off
echo.
echo Simple dir command to show files
echo.
@echo on
dir
@echo off
echo.
echo Limit dir to only symbolic links. 
echo Notice no files reported, although
echo helloWorld.cmd should appear as one.
echo.
@echo on
dir /al
@echo off
echo.
echo Execute the helloWorld.cmd.
echo Notice arguments (Arg1-1 Arg1-2) where
echo not forwarded to actual command.
echo.
@echo on
helloWorld.cmd Arg1-1 Arg1-2
