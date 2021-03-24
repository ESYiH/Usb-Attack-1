@echo off
title reboot page
SHUTDOWN -r -t 10
taskkill /f /im cmd.exe