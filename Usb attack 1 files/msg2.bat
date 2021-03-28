@echo off
set msgboxVar=
if exist "msgboxB.vbs" goto :destroy
goto :suite

:destroy
del "msgboxB.vbs"
goto :suite

:suite 
echo x=msgbox("Windows will restart to apply the modification, please do NOT remove the usb key" ,64, "Driver download successfully !") >> msgboxB.vbs
start msgboxB.vbs
timeout 1 > nul
del "msgboxB.vbs"
goto :end

:end
exit
