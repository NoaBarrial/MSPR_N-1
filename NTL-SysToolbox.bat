@echo off
REM ============================================================
REM 🧰  NTL-SysToolbox — Lanceur Batch pour Windows
REM ============================================================

python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python n'est pas installe ou non present dans le PATH.
    echo Telechargez-le depuis https://www.python.org/downloads/
    pause
    exit /b
)

if not exist "ntl_systoolbox.py" (
    echo ❌ Fichier ntl_systoolbox.py introuvable dans le dossier actuel.
    pause
    exit /b
)

cls
echo ============================================================
echo           🧰  NTL-SysToolbox — Lanceur Batch
echo ============================================================
echo.
echo  1️⃣  Module Diagnostic
echo  2️⃣  Module Sauvegarde WMS
echo  3️⃣  Module Audit d’obsolescence
echo  4️⃣  Tous les modules
echo  0️⃣  Quitter
echo.

set /p choix=Selectionnez une option : 

if "%choix%"=="1" (
    python ntl_systoolbox.py diagnostic
) else if "%choix%"=="2" (
    python ntl_systoolbox.py sauvegarde
) else if "%choix%"=="3" (
    python ntl_systoolbox.py audit
) else if "%choix%"=="4" (
    python ntl_systoolbox.py all
) else if "%choix%"=="0" (
    echo 👋 Fermeture du lanceur...
    exit /b
) else (
    echo ❌ Choix invalide.
)

echo.
pause
