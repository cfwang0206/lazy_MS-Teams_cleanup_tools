@echo off
title Microsoft Teams Lazy Cleanup scripts -cfwang@HiLink 20210323
echo.
echo.
echo This script help you lazy cleanup M$ Teams files,
echo.
echo Solve M$ Teams can't login problem.
echo.                                    
echo 								  	cfwang 20210323
echo.
echo REF:
echo [1] Microsoft Teams – Clearing the Teams Client Cache, https://www.uvm.edu/it/kb/article/clearing-teams-cache/
echo [2] Teams Can't log in(In chinese), https://answers.microsoft.com/zh-hant/msoffice/forum/msoffice_o365admin-mso_teams-mso_o365b/teams/0158a91c-27fd-4658-af38-baa92cf3926b
echo.
echo Press any key - Cleaning up M$ Teams files....
pause

cls

echo.
echo End M$ Teams process... 
start /wait tskill teams
echo.
echo Remove %appdata%\Microsoft\teams folder [1]
rmdir /s /q %appdata%\Microsoft\teams
echo.
echo.

echo  Remove C:\Users\%username%\AppData\Local\Microsoft\Teams folder [2]
rmdir /s /q  C:\Users\%username%\AppData\Local\Microsoft\Teams
REM Remove %appdata%\Microsoft\teams folder [1] again...
rmdir /s /q %appdata%\Microsoft\teams

echo.
echo.
echo clearup done.

echo Press any key - Run M$ Teams application Again...
pause
cls
echo  Run M$ Teams application Again...
%PROGRAMDATA%\%username%\Microsoft\Teams\Update.exe --processStart "Teams.exe"

end
