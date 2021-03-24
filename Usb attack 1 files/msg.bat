@echo off
set msgboxVar=
if exist "msgbox.vbs" goto :destroy
goto :suite

:destroy
del "msgbox.vbs"
goto :suite

:suite 
echo x=msgbox("Windows has detected that your usb key have a special driver, windows need to download it and reboot before reading it." ,64, "Checking for a driver update") >> msgbox.vbs
start msgbox.vbs
goto :end

:end
exit