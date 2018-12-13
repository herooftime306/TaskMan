@echo off
color 0C
echo I am NOT responsible for any misuse of this software or any damage caused by it. this is an expeiremental program so its still kinda unstable, use at your own risk. do you understand? (Y/N)
set/p ua=
if %ua% == n exit
if %ua% == N exit
if %ua% == y goto top
if %ua% == Y goto top
:top
color 0A
cls
echo TaskMAN. pro
:cd
echo -----------------------------------------------------
echo what would you like to do?
echo tasklist(tl)   taskkill(tk)     serverveiw(sl)
echo exit(exit)     shutdown(sdp)    del. files(dfile)
echo maskfile(mkfl) callback(tskall) normal cmd(cmd)
echo -----------------------------------------------------
set/p cmd=
if %cmd% == sv netstat -q -r -x -p proto
if %cmd% == tk goto mid
if %cmd% == tl goto tl
if %cmd% == exit exit
if %cmd% == sdp shutdown -p
if %cmd% == dfile goto dfile
if %cmd% == mkfl goto mkfl
if %cmd% == tskall goto tskall
if %cmd% == cmd start cmd.exe
goto top
pause
goto top
:mid
set /p task=TASKKILL:
echo are tou shure you want to taskkill %task% (Y/N)
set /p tkc=
if %tkc% == n goto top
if %tkc% == N goto top
if %tkc% == y goto next
if %tkc% == Y goto next
:next
taskkill /F /IM %task%
goto top
:dfile
set /p filename = file loc:
del /f test
pause
goto top
:tskall
set /p call = task:
start %call%
pause
goto top
:tl
tasklist
goto cd