@echo off

del /f /q xdelta3*.exe >nul 2>nul
set path=e:\MinGW\bin;%path%

make -B xd32