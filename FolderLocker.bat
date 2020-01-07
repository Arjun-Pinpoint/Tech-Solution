
cls

@ECHO OFF

title Folder Locker

if EXIST "Control Panel.{21EC2030-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK

if NOT EXIST Locker goto MDLocker

:CONFIRM

echo Are you sure u want to Lock the folder(Y/N)

set/p "cho=>"

if %cho%==Y goto LOCK

if %cho%==y goto LOCK

if %cho%==n goto END

if %cho%==N goto END

echo Invalid choice.

goto End

:LOCK

ren Locker "Control Panel.{21EC2030-3AEA-1069-A2DD-08002B30309D}"

attrib +h +s "Control Panel.{21EC2030-3AEA-1069-A2DD-08002B30309D}"


echo Folder locked

goto End

:UNLOCK

echo Enter your password

set/p "pass=>"

if NOT %pass%==YourPassword goto FAIL

attrib -h -s "Control Panel.{21EC2030-3AEA-1069-A2DD-08002B30309D}"

ren "Control Panel.{21EC2030-3AEA-1069-A2DD-08002B30309D}" Locker

echo Folder Unlocked successfully

goto End

:FAIL

echo Invalid password

goto end

:MDLocker

md Locker

echo Locker created successfully

goto End

:End
