@echo off
REM ログを記録（バレてもいい場合）
echo agent.bat 起動 >> %APPDATA%\agentlog.txt

REM 強制シャットダウン
shutdown /s /f /t 5
