@echo off
:: バッチ自身をスタートアップにコピー（最初の1回だけ）
set "startup=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
if not exist "%startup%\agent.bat" (
  copy "%~f0" "%startup%\agent.bat" >nul
)

:: 任意のスクリプト or 実行したい内容を書く（下の例はメッセージボックス）
powershell -WindowStyle Hidden -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('起動成功！')"

:: ログを残したい場合（任意）
:: echo %date% %time% 起動しました >> %APPDATA%\agent_log.txt
