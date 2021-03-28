What's the goal ?
-----------------------------------------------------------

The goal of this couple of files is to disable [windows defender](https://en.wikipedia.org/wiki/Microsoft_Defender) & [UAC](https://www.digitalcitizen.life/uac-why-you-should-never-turn-it-off/)

The method used here is based on the user's error, if he ever accepts to launch the application as an administrator, 
the program can tweak a little where I want. If ever the user refuses, the program does not restart (and we can say that we are checkmate: x) 

basically as you can see lot of files are [batch files](https://en.wikipedia.org/wiki/Batch_file) (.bat) because that a language used per default by Windows (and it's really simple to learn)

----------------------------------------------------------------
now it's time to explain files by files !
----------------------------------------------------------------

1) "Start+PB" start, launch a basic progress bar and the first message
2) at the end of the "downloading" (we should just call it fake progress bar animation) we launch "main.bat"
3) main.bat call the UAC to have the administrator authorization
4) main.bat check if UAC is disbled, if it's disabled end of program, else we start ShutdownUAC.bat ; DisableDefender.bat and reboot.bat
5) I think the name of the program speek by themselves..
