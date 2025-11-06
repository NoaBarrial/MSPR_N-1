@echo off
chcp 65001 >nul
title 🧰 NTL-SysToolbox — Lanceur Batch
cls

REM ============================================================
REM 🧰  NTL-SysToolbox — Lanceur Batch pour Windows (boucle menu)
REM ============================================================

:MENU
cls
echo ============================================================
echo           🧰  NTL-SysToolbox — Lanceur Batch
echo ============================================================
echo.
echo   [1] Module Diagnostic
echo   [2] Module Sauvegarde WMS
echo   [3] Module Audit d'obsolescence
echo   [4] Tous les modules
echo   [0] Quitter
echo.

set /p choix=Sélectionnez une option : 
echo.

if "%choix%"=="1" (
    python ntl_systoolbox.py diagnostic
    echo.
    pause
    goto MENU
) else if "%choix%"=="2" (
    python ntl_systoolbox.py sauvegarde
    echo.
    pause
    goto MENU
) else if "%choix%"=="3" (
    python ntl_systoolbox.py audit
    echo.
    pause
    goto MENU
) else if "%choix%"=="4" (
    python ntl_systoolbox.py all
    echo.
    pause
    goto MENU
) else if "%choix%"=="0" (
    echo 👋 Fermeture du lanceur...
    exit /b
) else (
    echo ❌ Choix invalide.
    pause
    goto MENU
)
