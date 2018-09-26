@echo off

cd /d "%~dp0"
cacls.exe "%SystemDrive%\System Volume Information" >nul 2>nul
if %errorlevel%==0 goto Admin
if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"
echo Set RequestUAC = CreateObject^("Shell.Application"^)>"%temp%\getadmin.vbs"
echo RequestUAC.ShellExecute "cmd.exe", "/c %~s0 %*","","runas",1 >>"%temp%\getadmin.vbs"
echo WScript.Quit >>"%temp%\getadmin.vbs"
"%temp%\getadmin.vbs" /f
if exist "%temp%\getadmin.vbs" del /f /q "%temp%\getadmin.vbs"
exit

:Admin
::C:\Users\29473\AppData\Local\Programs\Python\Python36\python.exe "E:\东南大学\2018研究生数学建模\data Visualization\sync.py" %1
::python "E:\东南大学\2018研究生数学建模\data Visualization\sync.py" %1
:: ad=OneDrive地址
set ad=E:\OneDrive - 东南大学\
set name=%~n1 
set "link=%ad%%name%" 
mklink /d "%link%" "%1"
