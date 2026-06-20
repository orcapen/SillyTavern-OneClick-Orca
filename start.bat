@echo off
:: 設定編碼為 UTF-8，防止中文亂碼
chcp 65001 >nul

title 鯨的 SillyTavern 一鍵啟動器

:: ==========================================
:: 【關鍵修改】切換到下一層的子資料夾
:: %~dp0 代表啟動器所在的當前目錄，後面接上你的子資料夾名稱
:: ==========================================
pushd "%~dp0Core"

:: 啟用生產模式以提升效能
set NODE_ENV=production

:: 【防呆機制】檢查 Port 8000 是否已被佔用
netstat -ano | find "LISTENING" | find ":8000" >nul
if %errorlevel% equ 0 (
    color 0E
    echo ===================================================
    echo   [提示] 伺服器已經在背景運作中！
    echo ===================================================
    echo.
    echo 偵測到 SillyTavern 已經啟動過了。
    echo 現在直接幫您開啟瀏覽器...
    
    start http://127.0.0.1:8000
    
    timeout /t 2 >nul
    popd
    exit /b
)

:: 檢查通過，正常啟動（黑底綠字）
color 0A
echo ==========================================
echo      正在啟動 SillyTavern 本機伺服器...
echo      (請勿關閉此黑畫面視窗！)
echo ==========================================
echo.

:: 使用內建 node 執行，並保留外部參數傳遞功能
.\node.exe server.js %*

:: 錯誤攔截與復原路徑
echo.
echo [系統提示] 伺服器已停止運作。
pause
popd