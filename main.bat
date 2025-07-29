@echo off

@REM #1 create the files
cd %USERPROFILE%/Desktop
echo hello desktop > desktop.txt

cd %USERPROFILE%/Downloads
echo hello download > download.txt

@REM #2 switches between their locations
move %USERPROFILE%/Desktop/desktop.txt %USERPROFILE%/Downloads
move %USERPROFILE%/Downloads/download.txt %USERPROFILE%/Desktop 

@REM #3 create a new directory in the desktop
cd %USERPROFILE%/Desktop
mkdir newDir

@REM #4 save netstat to a file
netstat -ano > netstat.txt

@REM #5 check for port 80
findstr ":80 " netstat.txt > NUL
if %errorlevel% == 0 (
    echo has port 80
) else (
    echo doesn't have port 80
)

@REM #6 delete the new directory
del netstat.txt

