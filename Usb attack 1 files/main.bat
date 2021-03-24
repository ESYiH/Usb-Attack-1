@echo off
rem -> got admin permission

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"


if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

rem global code
for /f "skip=2 tokens=3" %%a in ('reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA') do if "%%a" equ "0x0" (
rem When UAC is disabled
goto :end

) ELSE (
    rem When UAC is enabled
    rem shutdown it with the command below
    start /min ShutdownUAC.bat
    rem reboot the pc
    start /min reboot.bat
)
:end
exit
