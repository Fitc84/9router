@echo off
title Stopping 9Router Server
cd /d "d:\3_Data\Git\9router"
cls
echo ===================================================
echo             STOPPING 9ROUTER GATEWAY SERVER        
echo ===================================================
echo.
echo [INFO] Stopping main server on port 20128...
powershell -Command "Get-NetTCPConnection -LocalPort 20128 -ErrorAction SilentlyContinue | Select-Object -ExpandProperty OwningProcess -Unique | ForEach-Object { Stop-Process -Id $_ -Force -ErrorAction SilentlyContinue }"

echo [INFO] Stopping child instances on ports 2030 to 2040...
powershell -Command "2030..2040 | ForEach-Object { Get-NetTCPConnection -LocalPort $_ -ErrorAction SilentlyContinue } | Select-Object -ExpandProperty OwningProcess -Unique | ForEach-Object { Stop-Process -Id $_ -Force -ErrorAction SilentlyContinue }"

echo.
echo ===================================================
echo [SUCCESS] All 9Router server processes are stopped!
echo ===================================================
echo.
timeout /t 3
