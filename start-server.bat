@echo off
title 9Router Gateway Server
cd /d "d:\3_Data\Git\9router"
cls
echo ===================================================
echo             STARTING 9ROUTER GATEWAY SERVER        
echo ===================================================
echo.
echo [INFO] Running in Development Mode on http://localhost:20128
echo [INFO] Close this window or run stop-server.bat to shut down.
echo.
npm run dev
pause
