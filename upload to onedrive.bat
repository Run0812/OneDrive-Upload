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
::C:\Users\29473\AppData\Local\Programs\Python\Python36\python.exe "E:\���ϴ�ѧ\2018�о�����ѧ��ģ\data Visualization\sync.py" %1
::python "E:\���ϴ�ѧ\2018�о�����ѧ��ģ\data Visualization\sync.py" %1
:: ad=OneDrive��ַ
set ad=E:\OneDrive - ���ϴ�ѧ\
set name=%~n1 
set "link=%ad%%name%" 
mklink /d "%link%" "%1"
