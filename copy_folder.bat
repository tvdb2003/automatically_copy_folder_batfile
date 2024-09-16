@echo off
set SOURCE_DIR=C: !!!! path where you want to copy from
set DEST_DIR=c: !!!! path where you want to copy to

:: Get the current date in DD-MM-YYYY format
for /f "tokens=2 delims==" %%i in ('wmic os get localdatetime /value') do set dt=%%i
set YYYY=%dt:~0,4%
set MM=%dt:~4,2%
set DD=%dt:~6,2%

set FOLDER_NAME=%YYYY%-%MM%-%DD%

:: Debugging output
echo Source Directory: %SOURCE_DIR%%FOLDER_NAME%
echo Destination Directory: %DEST_DIR%%FOLDER_NAME%
echo Copying folder "%SOURCE_DIR%%FOLDER_NAME%" to "%DEST_DIR%"

:: Copy the folder from source to destination
xcopy "%SOURCE_DIR%%FOLDER_NAME%" "%DEST_DIR%%FOLDER_NAME%" /e /i /h /y
